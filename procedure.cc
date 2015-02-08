/*
 * procedure.cc
 *
 *  Created on: 2014年12月28日
 *      Author: keyming
 */
#include <stack>
#include <algorithm>
#include <vector>
#include <stdlib.h>
#include "procedure.h"
#include "user_options.h"
#include "misc.h"
#include "thread_partition.h"
#include "procedure_path.h"
#include "spmt_utility.h"
#include "threshold.h"
#include <math.h>

extern int cfg_node_static_instr_size(cfg_node *node);

static void addHeadBlock(std::vector<super_block_path*> *thePathList, super_block *head);
static std::vector<super_block_path*> *addListToTail(std::vector<super_block_path*> *theMain, std::vector<super_block_path*> *theTail);
static std::vector<super_block_path*> *twoSubPath(super_block *begin, super_block *end);
static std::vector<super_block_path*> *nonDomToDom(super_block *begin, super_block *end);



Procedure* Procedure::currentProcedure = NULL;
static void construct_super_block_relationship(da_cfg* the_cfg, super_block_cfg * sbc);
static void non_loop_partition(super_block_cfg *scfg);
static loop_block * partition_loop(cfg_node * loop_entry);
static cfg_node *peek_node(super_block * sb);
static void Process_symtab(base_symtab * st, boolean descend, FILE * o_fd);

void non_loop_partition(super_block_cfg *scfg){
	return;
}

Procedure* Procedure::getCurrentProcedure(){
	return currentProcedure;
}




void Procedure::init_dacfg(proc_sym *cur_psym) {
	/*deal with procedure symbol ; make sure its legal*/
			Process_symtab(cur_psym->block()->proc_syms(), TRUE, stdout);
			/*init procedure cfg which contained data flow analysis */
			the_cfg = new da_cfg(cur_psym->block(), TRUE, TRUE, TRUE);
			the_cfg->remove_unreachable_blocks();
			the_cfg->find_dominators();
			the_cfg->find_postdominators();
			the_cfg->find_natural_loops();
			the_cfg->remove_shadows();
			/*init procedure cfg_node_list */
			the_full_cnl = the_cfg->reverse_postorder_list(); //深度优先排序，加快迭代速度

			the_bit_mgr = new operand_bit_manager(NULL, NULL, 1024, TRUE);
			enroll_variables(cur_psym->block(), the_bit_mgr); //登记变量
			the_teller = new reg_def_teller(cur_psym, the_bit_mgr); /*contain local variable */
			the_reach = new reaching_def_problem(the_cfg, the_teller);
			/*print verbose information of bit manager */

			//UserOptions *options = UserOptions::getUserOptions();
//			if (options->getVerbose()) {
//				printf("\n###the information of bit manager###\n");
//				print_bit_man(the_bit_mgr);
//			}
			the_cfg->find_live_vars_more(the_bit_mgr);

			// \brief : print control flow graph and data flow analysis before partition
//			if (options->getVerbose()) {
//				printf("************Before partition************\n\n");
//				printf("###control flow graph begin###\n\n");
//				the_cfg->print_cfg();
//				printf("###control flow graph end###\n\n");
//				printf("###data flow analysis begin###\n\n");
//				the_cfg->print_dfa();
//				printf("\n");
//				printf("###data flow analysis end###\n\n");
//			}
//			// \brief : generate dot file to form *.png picture
//			if (options->getGenerateDotGraph()) {
//				the_cfg->generate_dot(options->getDotFilePtr());
//			}
			//print loop_depth
			  /*for(int i = 0; i < the_cfg->num_nodes(); ++i){
			 int depth = the_cfg->loop_depth(i);
			 boolean bLoopBegin = the_cfg->is_loop_begin(i);
			 boolean bLoopEnd = the_cfg->is_loop_exit(i);

			 printf("Node_%d depth is %d; begin:%d  exit %d\n", i, depth, bLoopBegin, bLoopEnd);
			 }*/

			//fprintf(options->getLoopTestFilePtr(), "\n当前访问函数:%s:\n", cur_psym->name());

			/*partition loops and construct super block cfg */
			threads = new std::vector<thread*>();
			loops = new std::vector<loop_block*>();
			the_scfg = this->consturct_super_block_cfg();
			pathList = new std::vector<ProcedurePath*>();
			dominatorBlockList = new std::vector<super_block*>();
			cqip_block_list = new std::vector<super_block*>();
			findDominatorList();
			printDominatorList(std::cout);
			determineThreadSize();
			printCqipList(std::cout);
			if(strcmp(cur_psym->name(), "subdivp") == 0){
				std::cout << "当前正在访问函数:" << cur_psym->name() << std::endl;
			}
			findMostLikelyPathOfProc();
			this->likelyPath->printPath(std::cout);
}
/**
* 2011-4-25 注释 by SYJ
* 递归遍历，检测符号表中sym_node类型是否合法。
*/
static void Process_symtab(base_symtab * st, boolean descend, FILE * o_fd)
{
    sym_node_list_iter sym_iter(st->symbols());
    while (!sym_iter.is_empty()) {
	sym_node *sn = sym_iter.step();
	if (sn->is_var()) {
	    var_sym *v = (var_sym *) sn;
	    if (v->is_extern()) {
		assert(v->is_static());
		assert(!v->has_var_def());
	    } else if (v->has_var_def()) {
	    } else {
		assert(v->is_auto());
	    }
	} else if (sn->is_proc()) {
	    proc_sym *p = (proc_sym *) sn;
	} else if (sn->is_label()) {
	} else
	    assert_msg(FALSE, ("Process_symtab: unknown symbol type"));
    }

    if (descend) {
	base_symtab_list_iter child_iter(st->children());
	while (!child_iter.is_empty()) {
	    base_symtab *child = child_iter.step();
	    Process_symtab(child, TRUE, o_fd);
	}
    }
}


Procedure::Procedure(mproc_symtab* the_cur_psymtab, proc_sym *the_cur_psym) : cur_psym(the_cur_psym), cur_psymtab(the_cur_psymtab), the_cfg(NULL), the_bit_mgr(NULL),
		the_full_cnl(NULL), the_teller(NULL), the_reach(NULL), the_scfg(NULL),
		threads(NULL), loops(NULL), pathList(NULL), dominatorBlockList(NULL), likelyPath(NULL){
	init_dacfg(cur_psym);
	currentProcedure = this;
}



proc_sym* Procedure::getCurPsym() const {
	return cur_psym;
}

mproc_symtab* Procedure::getCurPsymtab() const {
	return cur_psymtab;
}

std::vector<loop_block*>* Procedure::getLoops() const {
	return loops;
}

operand_bit_manager* Procedure::getTheBitMgr() const {
	return the_bit_mgr;
}

da_cfg* Procedure::getTheCfg() const {
	return the_cfg;
}

cfg_node_list* Procedure::getTheFullCnl() const {
	return the_full_cnl;
}

reaching_def_problem* Procedure::getTheReach() const {
	return the_reach;
}

super_block_cfg* Procedure::getTheScfg() const {
	return the_scfg;
}

reg_def_teller*Procedure::getTheTeller() const {
	return the_teller;
}

std::vector<thread*>*Procedure::getThreads() const {
	return threads;
}

std::vector<super_block*>* Procedure::getDominatorBlockList() const{
	return dominatorBlockList;
}

std::vector<super_block*>* Procedure::getCqipBlockList()const{
	return cqip_block_list;
}


ProcedurePath* Procedure::getProceurePath()const{
	return this->likelyPath;
}


void Procedure::addToCqipBlockList(super_block* block){
	this->cqip_block_list->push_back(block);
	return;
}

void Procedure::findAllSuitablePathList(){
	super_block *start_block = the_scfg->entry();
	 super_block *end_block = the_scfg->exit();
	super_block* pdom = start_block->immed_pdom();
	super_block_path* likely_path = ThreadPartition::find_most_likely_path(start_block, end_block);
	ProcedurePath *procPath = new ProcedurePath(likely_path, cqip_block_list);
	procPath->printCqipList(std::cout);
	procPath->printPath(std::cout);
	pathList->push_back(procPath);
	return ;
}

static double myfabs(double d){
	return fabs(d);
}

static std::vector<super_block_path*> *isImParentAndReturn(super_block *begin, super_block *end){
	assert(begin);
	assert(end);
	std::vector<super_block_path*> *thePathList = new std::vector<super_block_path*>();

	// case 1. begin is immediate connect with end. and begin only has one child.
	if( (begin->take_succ() == end && begin->fall_succ() == NULL) || (begin->fall_succ() == end  && begin->take_succ() == NULL)){
		super_block_path* subPath = new super_block_path();
		subPath->add_super_block(begin);
		thePathList->push_back(subPath);
		return thePathList;
	}

	// case 2.  fall=end, taken!= NULL(may be huge)
	if(begin->fall_succ() == end && begin->take_succ() != NULL){
		super_block_path* subPath = new super_block_path();
		subPath->add_super_block(begin);
		thePathList->push_back(subPath);

		std::vector<super_block_path*> *theBranchPathList = nonDomToDom(begin->take_succ(), end);
		addHeadBlock(theBranchPathList, begin);
		addListToTail(thePathList, theBranchPathList);
		return thePathList;
	}

	// case 3. taken=end, fall != NULL, fall may be very huge.
	if(begin->take_succ() == end && begin->fall_succ() != NULL){
		super_block_path* subPath = new super_block_path();
		subPath->add_super_block(begin);
		thePathList->push_back(subPath);

		std::vector<super_block_path*> *theBranchPathList = nonDomToDom(begin->fall_succ(), end);
		addHeadBlock(theBranchPathList, begin);
		addListToTail(thePathList, theBranchPathList);
		return thePathList;
	}

	assert(begin->fall_succ() != NULL && begin->take_succ() != NULL);
	// case 4. begin->next->next = end.
	if(begin->fall_succ()->likely_succ() == end && begin->take_succ()->likely_succ() == end){
		delete thePathList;
		return twoSubPath(begin, end);
	}

	// case 5. others return NULL.
	return NULL;
}

static bool isImParent(super_block *begin, super_block *end){
	assert(begin);
	assert(end);

	// case 1. begin is immediate connect with end. and begin only has one child.
	if( (begin->take_succ() == end && begin->fall_succ() == NULL) || (begin->fall_succ() == end  && begin->take_succ() == NULL)){
		return true;
	}

	if(begin->fall_succ() == end && begin->take_succ() != NULL){
		return true;
	}

	if(begin->take_succ() == end && begin->fall_succ() != NULL){
		return true;
	}

	return false;
}


static std::vector<super_block_path*> *twoSubPath(super_block *begin, super_block *end){
	//assert(begin->isHaveTwoBranch());
	std::vector<super_block_path*> *thePathList = new std::vector<super_block_path*>();

//	if(begin->fall_succ() == end && begin->fall_prob() >= 0.001){
//		super_block_path* subPath = new super_block_path();
//		subPath->add_super_block(begin);
//		thePathList->push_back(subPath);
//		return thePathList;
//	}
//
//	if(begin->likely_succ() == end){
//		super_block_path* subPath = new super_block_path();
//		subPath->add_super_block(begin);
//		thePathList->push_back(subPath);
//		return thePathList;
//	}

	if(begin->taken_prob() >= 0.001){
		super_block_path* subPath = new super_block_path();
		subPath->add_super_block(begin);
		subPath->add_super_block(begin->take_succ());
		thePathList->push_back(subPath);
	}
	if(begin->fall_prob() >= 0.001){
		super_block_path* subPath = new super_block_path();
		subPath->add_super_block(begin);
		subPath->add_super_block(begin->fall_succ());
		thePathList->push_back(subPath);
	}
	return thePathList;
}

void printPathList(std::vector<super_block_path*> *thePathList){
	if(thePathList->empty()){
		std::cout << "The Path is empty. " << std::endl;
	}
	std::cout << "Here have " << thePathList->size() << " paths in this part of the subPath." << std::endl;
	for(int i = 0; i < thePathList->size(); i++){
		//std::cout << "The " << i << " path." << std::endl;
		thePathList->at(i)->printOnlyBlockNum(stdout);
	}
	return ;
}

std::vector<super_block_path*> *addRestToTail(std::vector<super_block_path*> * thePathList, super_block_path *theRestPath){
	if(theRestPath->super_blocks()->is_empty()){
		return thePathList;
	}

	for(int i = 0; i < thePathList->size(); i++){
		thePathList->at(i)->add_super_blocks(theRestPath->super_blocks());
	}
	return thePathList;
}

std::vector<super_block_path*> * findBlockPath(super_block *begin, super_block *end);

static std::vector<super_block_path*> *nonDomToDom(super_block *begin, super_block *end){
	std::vector<super_block_path*> *ret = NULL;
	if(begin == end){		// Then this path would be empty.  But we should still keep this path in the vector. Because the path must have a head, and it can be non-empty after inserting the head.
		super_block_path *thePath = new super_block_path();
		ret = new std::vector<super_block_path*>();
		ret->push_back(thePath);			// thePath is empty.
		return ret;
	}
	super_block *pdom = begin->immed_pdom();
	std::vector<super_block_path*> *theSubPathList = findBlockPath(begin, pdom);
	printPathList(theSubPathList);
	super_block_path *theRestSubPath = new super_block_path();
	super_block *block = pdom;
	while(block != end){
		theRestSubPath->add_super_block(block);
		block = block->likely_succ();
	}

	ret = addRestToTail(theSubPathList, theRestSubPath);
	printPathList(ret);
	return ret;
}

static std::vector<super_block_path*> *addListToTail(std::vector<super_block_path*> *theMain, std::vector<super_block_path*> *theTail){
	for(int i = 0; i < theTail->size(); i++){
		theMain->push_back(theTail->at(i));
	}
	return theMain;
}

void addHeadBlock(std::vector<super_block_path*> *thePathList, super_block *head){
	assert(head != NULL);
	for(int i = 0; i < thePathList->size(); i++){
		super_block_path  *thePath = new super_block_path();
		thePath->add_super_block(head);
		thePath->add_super_blocks(thePathList->at(i)->super_blocks());
		delete thePathList->at(i);
		thePathList->at(i) = thePath;
	}
}


std::vector<super_block_path*> * findBlockPath(super_block *begin, super_block *end){
	if(begin == end){
		std::cout << "begin =  " << begin->block_num() << ", end = " << end->block_num() << std::endl;
		assert(begin != end);
	}
	if(!end->isPdominatorOf(begin)){
		std::cout << "begin =  " << begin->block_num() << ", end = " << end->block_num() << std::endl;
		assert(end->isPdominatorOf(begin));
	}
	//assert(begin->isDominatorOf(end));
	assert(begin != end);

	std::vector<super_block_path*> *pathList = NULL;
	if(end == begin->immed_pdom()){			// if end is the immediate post dominator of begin, then goto the Imparent function.
		pathList = isImParentAndReturn(begin, end);
		if(pathList){
			return pathList;
		}
	}
	assert(pathList == NULL);

	super_block *block = begin;
	super_block *the_branch_block = begin, *the_branch_pdom = begin->immed_pdom();
	float diffProbability = 1.0;
	while(block != end){
		if(!block->isHaveTwoBranch()){
			block = block->immed_pdom();
			continue;
		}
		double theDiffPro = 0;
		theDiffPro = fabs((double)block->taken_prob() - block->fall_prob());
		if(theDiffPro < diffProbability){
			diffProbability = theDiffPro;
			the_branch_block = block;
		}
		block = block->immed_pdom();
	}

	pathList = new std::vector<super_block_path*>();
	super_block_path* subPath = new super_block_path();

	if(diffProbability  > 0.9995){			// means that there should be only one sub path from the begin to the end.
		// find the most likely path  from begin  to end.
		//subPath->add_super_block(begin);
		super_block *the_block = begin;
		while(the_block != end){
			subPath->add_super_block(the_block);
			the_block = the_block->likely_succ();
		}
		pathList->push_back(subPath);
		return pathList;
	}

	std::vector<super_block_path*>* thePathList = new std::vector<super_block_path*>();
	the_branch_pdom = the_branch_block->immed_pdom();
	{

		std::vector<super_block_path*>* theFallBranch = nonDomToDom(the_branch_block->fall_succ(), the_branch_pdom);
		std::vector<super_block_path*>* theTakenBranch = nonDomToDom(the_branch_block->take_succ(), the_branch_pdom);

		addListToTail(thePathList, theFallBranch);
		addListToTail(thePathList, theTakenBranch);
	}
	printPathList(thePathList);
	addHeadBlock(thePathList, the_branch_block);
	printPathList(thePathList);
	if(the_branch_block == begin && the_branch_pdom == end){
		return thePathList;
	}
	//thePathList = findBlockPath(the_branch_block, the_branch_pdom);

	super_block_path *otherSubPath = new super_block_path();
	block = begin;
	while(block != the_branch_block){
		otherSubPath->add_super_block(block);
		block = block->likely_succ();
	}

	super_block_path *otherEndSubPath = new super_block_path();
	block = the_branch_pdom;
//	if(the_branch_pdom != end){
//		otherEndSubPath->add_super_block(the_branch_pdom);
//	}
	while(block != end){
		otherEndSubPath->add_super_block(block);
		block = block->likely_succ();
	}
	int pathNum = thePathList->size();
	std::cout << "Have path " << pathNum<< "条" << std::endl;
	for(int i = 0; i < pathNum; i++){
		super_block_path *thePath = new super_block_path();
		thePath->add_super_blocks(otherSubPath->super_blocks());
		thePath->add_super_blocks(thePathList->at(i)->super_blocks());
		thePath->add_super_blocks(otherEndSubPath->super_blocks());
		pathList->push_back(thePath);
	}

	return pathList;
}

std::vector<super_block_path*> * Procedure::findSubPathInDoms(super_block *dom_block_begin, super_block* dom_block_end){
	assert(std::find(this->dominatorBlockList->begin(), this->dominatorBlockList->end(), dom_block_begin) != this->dominatorBlockList->end() || dom_block_begin->block_num() == the_cfg->entry_node()->number() );
	assert(std::find(this->dominatorBlockList->begin(), this->dominatorBlockList->end(), dom_block_end) != this->dominatorBlockList->end() || dom_block_end->block_num() == the_cfg->exit_node()->number());

	std::vector<super_block_path*> *subPathList = NULL;
	subPathList =  findBlockPath(dom_block_begin, dom_block_end);
	return subPathList;
}

std::vector<super_block_path*>*  Procedure::findMostLikelySubPathInThreadBlock(super_block *begin, super_block *end){
	assert(begin != NULL);
	assert(end != NULL);
//	super_block *block = begin;
//	super_block *the_branch_block = begin;
//	float diffProbability = 1.0;
//	while(block != end){
//		if(!block->isHaveTwoBranch()){
//			block = block->immed_pdom();
//			continue;
//		}
//		double theDiffPro = 0;
//		theDiffPro = fabs((double)block->taken_prob() - block->fall_prob());
//		if(theDiffPro < diffProbability){
//			diffProbability = theDiffPro;
//			the_branch_block = block;
//		}
//		block = block->immed_pdom();
//	}
	std::vector<super_block_path*>* threadPathList = NULL;
	threadPathList = findSubPathInDoms(begin, end);
	return threadPathList;
}




/**
 * search the possible sub path in the thread block. The path is in the range [begin, end).
 */
void Procedure::findAllPathInThreadBlock(super_block *begin, super_block *end){
	assert(begin != NULL);
	assert(end != NULL);
	std::vector<super_block_path*> *subPathList = new std::vector<super_block_path*> ();
	super_block *block = begin;
	super_block_path *subPath = new super_block_path();
	subPath->add_super_block(block);				// add the begin block.

	while(1){
		while(block != end){
				if(block->isTakenVisit() == false && block->taken_prob() > 0.25){
					if(block->taken_prob() < 0.6){
						block->setTakenVisit(true);
					}
					block = block->take_succ();
				}
				else if(block->isFallVisit() == false && block->taken_prob() > 0.25){
					block->setFallVisit(true);
					block = block->fall_succ();
				}


				if(block != NULL && block != end){
					subPath->add_super_block(block);
				}
		}
		subPathList->push_back(subPath);
	}

}

void Procedure::findMostLikelyThreadPath(std::vector<super_block_path*>* &most_likely_thread_path_list){
	super_block *start_block = the_scfg->entry();
	super_block *end_block = the_scfg->exit();
	most_likely_thread_path_list = new std::vector<super_block_path*>();
	super_block *block = start_block->fall_succ();
	for(int i = 0; i < this->cqip_block_list->size(); i++){
		super_block_path *subPath = new super_block_path();
		subPath->add_super_block(block);
		while(block != this->cqip_block_list->at(i)){
			subPath->add_super_block(block);
			block = block->likely_succ();
		}
		most_likely_thread_path_list->push_back(subPath);
	}
	super_block_path *subPath = new super_block_path();
	subPath->add_super_block(block);
	while(block != end_block){
		subPath->add_super_block(block);
		block = block->likely_succ();
	}
	most_likely_thread_path_list->push_back(subPath);
}

void Procedure::fillInPathList(std::vector<super_block_path*>* thePathList){
	std::cout << "The size of the pathList is " << thePathList->size() << std::endl;
	for(int i = 0; i < thePathList->size(); i++){
		ProcedurePath* theProcedurePath =new  ProcedurePath(thePathList->at(i), this->cqip_block_list);
		pathList->push_back(theProcedurePath);
	}
	return ;
}

void Procedure::pushTheProcedurePath(std::vector<super_block_path*>* threadPath, int threadBlockNum){

	std::vector<super_block_path*>  theProcedurePathList;
	//1. fill in the theProcedurePathList.

	std::vector<super_block_path*>* most_likely_thread_path_list = NULL;
	findMostLikelyThreadPath(most_likely_thread_path_list);

	for(int i = 0; i < threadPath->size(); i++){
		super_block_path *thePath = new super_block_path();
		for(int j = 0; j < most_likely_thread_path_list->size(); j++){
			if(j == threadBlockNum){
				std::cout << "Add the sub path in thread " << j << ":" << std::endl;
				threadPath->at(i)->printOnlyBlockNum(stdout);
				thePath->add_super_blocks(threadPath->at(i)->super_blocks());
			}
			else{
				std::cout << "Add the sub path in thread " << j << ":" << std::endl;
				most_likely_thread_path_list->at(j)->print(stdout);
				thePath->add_super_blocks(most_likely_thread_path_list->at(j)->super_blocks());
			}
		}
		std::cout << "The path from the entry of the procedure to the exit of the procedure is as the folllowing:" << std::endl;
		thePath->printOnlyBlockNum(stdout);
		std::cout << "End the print of this procedure path" << std::endl;
		theProcedurePathList.push_back(thePath);
	}


	//2. convert the procedurePathList to pathList
	fillInPathList(&theProcedurePathList);
	return ;
}

ProcedurePath* Procedure::findMostLikelyPathOfProc(){
	super_block *begin = the_scfg->entry();
	super_block *end = the_scfg->exit();
	super_block_path *thePath = new super_block_path();
	super_block *block = begin->fall_succ();		// begin's block number is 0;
	assert(block != NULL);
	while(block != end){
		thePath->add_super_block(block);
		block = block->likely_succ();
	}
	ProcedurePath *pp = new ProcedurePath(thePath, this->cqip_block_list);
	this->likelyPath = pp;
	return pp;
}

void Procedure::findAllProcedurePathList__New(){
	super_block *start_block = the_scfg->entry();
	super_block *end_block = the_scfg->exit();

	int threadCount = cqip_block_list->size()+1;
	super_block *begin = start_block->fall_succ(), *end = end_block;
	for(int i = 0; i < threadCount; i++){
		if(i < cqip_block_list->size()){
			end = cqip_block_list->at(i);
		}
		else{
			end = end_block;
		}
		std::vector<super_block_path*> *threadPathList = findMostLikelySubPathInThreadBlock(begin, end);
		printPathList(threadPathList);
		pushTheProcedurePath(threadPathList, i);
		begin = end;
	}


	// 剔除重复的部分。
	std::cout << "The Original All ProcedurePath in the PathList is :" << std::endl;
	this->printProcedurePathList(std::cout);
	ProcedurePath *mostLikelyProcedurePath = this->likelyPath;
	int sameCount = 0;
	for(int i = 0; i < pathList->size(); i++){
		if(pathList->at(i)->haveTheSamePath(mostLikelyProcedurePath)){
			sameCount++;
			if(sameCount != 1){
				delete pathList->at(i);
				pathList->at(i) = NULL;
			}
		}
	}
	if(sameCount == 0){
		pathList->push_back(mostLikelyProcedurePath);
	}
	for(int i = 0; i < pathList->size(); i++){
		if(pathList->at(i) == NULL){
			std::cout << "NULL" << std::endl;
		}
		else{
			pathList->at(i)->printPath(std::cout);
		}
	}
	std::vector<ProcedurePath*>::iterator pos = remove(pathList->begin(), pathList->end(), (void*)NULL);
	pathList->erase(pos, pathList->end());
	return ;
}

void Procedure::findAllProcedurePathList(){
	super_block *start_block = the_scfg->entry();
	super_block *end_block = the_scfg->exit();

	std::vector<super_block_path*> *likely_path_list = new std::vector<super_block_path*>();
	while(1){
		super_block *the_block = start_block;
		super_block_path *spath = new super_block_path();
		while(the_block != end_block){

			if(the_block->taken_prob() > 0.25){
				the_block = the_block->take_succ();
			}
			else if(the_block->fall_prob() > 0.25){
				the_block = the_block->fall_succ();
			}

			if(the_block != 0 && the_block != end_block){
				spath->add_super_block(the_block);
			}

		}
		likely_path_list->push_back(spath);
	}

	return ;
}

static unsigned int super_block_list_size(std::vector<super_block*> *sblock_list){
	unsigned int list_size = 0;
	for(std::vector<super_block*>::const_iterator cit = sblock_list->begin(); cit != sblock_list->end(); cit++){
		list_size += (*cit)->size();
	}
	return list_size;
}

void Procedure::determineThreadSize(){
	super_block *start_block = the_scfg->entry();
	 super_block *end_block = the_scfg->exit();
	super_block* pdom = start_block->immed_pdom();
	super_block_path* likely_path = ThreadPartition::find_most_likely_path(start_block, end_block);
	std::vector<super_block*> *path = likely_path->getSuperblockVectorList();
	if(likely_path->size() < 2* threshold::thread_size_lower){		// this path is too short to cut into at least two threads.
		return ;
	}

	std::vector<super_block*> *dominatorList = Procedure::getCurrentProcedure()->getDominatorBlockList();
	std::vector<super_block*> pcur_thread, pfuture_thread;


	int path_pos = 0, dom_pos = 0;
	int pre_thread_size = 0;
	while(path_pos < path->size()  ){
		while(path_pos <path->size()  && super_block_list_size(&pcur_thread) < threshold::thread_size_lower ){
			pcur_thread.push_back((*path)[path_pos]);				// push back the dominator blocks.
			path_pos++;
			while(path_pos < path->size() && !ProcedurePath::isDominator( (*path)[path_pos] )){
				pcur_thread.push_back( (*path)[path_pos] );			// push back the non-dominator blocks.
				path_pos++;
			}
		}
		pre_thread_size = (pre_thread_size == 0 ? super_block_list_size(&pcur_thread): pre_thread_size);
		int pfuture_thread_size = likely_path->size() - pre_thread_size;
		if(path_pos < path->size()  && pfuture_thread_size >= (int)threshold::thread_size_lower){
			super_block *block = (*path)[path_pos];
#define DEBUG_THIS
#ifdef DEBUG_THIS
			if(block->block_num() == 11){
				std::cout << "The path size is" << likely_path->size() << ", the future thread size  is" << pfuture_thread_size << std::endl;
			}
#endif
			cqip_block_list->push_back(block);
			pre_thread_size += super_block_list_size(&pcur_thread);
			//addToThreadList(&pcur_thread);
			pcur_thread.clear();
		}
		else{
			if(!cqip_block_list->empty()){
				while(path_pos < path->size() ){
					super_block *block = (*path)[path_pos];
					pcur_thread.push_back(block);
					path_pos++;
				}
				//addToThreadList(&pcur_thread);
				pcur_thread.clear();
			}
			break;
		}
	}

}

void Procedure::findDominatorList(){
	super_block *entry_block = the_scfg->entry();
	super_block *end_block = the_scfg->exit();

	super_block *block = entry_block->fall_succ();
	while(block != end_block){
		dominatorBlockList->push_back(block);
		block = block->immed_pdom();
	}
	return ;
}



void Procedure::processProcedure(){

	generate_dot(cur_psym->name(), Procedure::BEFORE);
	UserOptions* options = UserOptions::getUserOptions();
		if (options->getVerbose()) {
			//print_all_definee(stdout, the_reach, the_scfg);
		}
		//------test for min_cut.h --------------------

		fprintf(options->getNodeNumTestFilePtr(), "\n当前访问函数:%s:\n", cur_psym->name());
		std::cout << "当前正在访问函数:" << cur_psym->name() << std::endl;
		if(strcmp(cur_psym->name(), "ptree") == 0){
			std::cout << "当前正在访问函数:" << cur_psym->name() << std::endl;
		}
		//this->findAllSuitablePathList();
		this->findAllProcedurePathList__New();
		std::cout << "###########Proc: " << cur_psym->name() <<"All the legal path go through the whole procedure is list as the following:###################" << std::endl;
		std::cout << "The most likely path is :" << std::endl;
		this->likelyPath->printPath(std::cout);
		for(int i = 0; i < pathList->size(); i++){
			pathList->at(i)->printPath(std::cout);
		}

		ProcedurePath *theProcPath = NULL;
		for(int i = 0; i < pathList->size(); i++){
				theProcPath = (*pathList)[i];
				ThreadPartition tp(theProcPath);
				tp.partition_thread();
		}

		if (options->getVerbose()) {
			printf("\n*********After partition************\n\n");
			the_cfg->print_cfg();

		}
		generate_dot(cur_psym->name(), Procedure::AFTER);
}

super_block_cfg*  Procedure::consturct_super_block_cfg() {
	  super_block_cfg *scfg = new super_block_cfg();

	    for (int i = 0; i < the_cfg->num_nodes(); i++) {

			if (the_cfg->is_loop_begin(i))	//If cfg_block is loop begin
			{
				//partition loop region, then set the loop region to one super block
				loop_block *loop = partition_loop(the_cfg->node(i));
				loop->set_block_num(i);
				scfg->append(loop);
				cfg_node *succ_node = loop->find_succ_node(the_cfg);

				if (!succ_node) {
					assert(0);
				} else {
					i = succ_node->number() - 1;
				}
			}
			//If cfg_block is non-loop region cfg_block
			else {
				cfg_node *node = the_cfg->node(i);
				super_block *sblock;
				if (node->is_begin()) {
					sblock = new super_block(super_block::CFG_BEGIN);
					scfg->set_entry(sblock);
				} else if (node->is_end()) {
					sblock = new super_block(super_block::CFG_END);
					scfg->set_exit(sblock);
				} else
				sblock = new super_block();

				sblock->set_block_num(i);
				sblock->add_block(node);
				scfg->append(sblock);
				printf("scfg:");
				scfg->print_relationship(stdout);
				printf("\n");
			}
	    }

	    construct_super_block_relationship(the_cfg, scfg);
	    scfg->print_relationship();
	    return scfg;
}

/**
 *find_most_likely_path() --- find the most likely path between super block(begin) and super block(end).
 寻找开始结束节点之间的最可能路径
 */
static super_block_path *find_most_likely_path(super_block * begin,
					super_block * end)
{
    super_block_path *path = new super_block_path();
    super_block *sb = begin;
    while (sb != end) {
	assert(sb != 0);
	//except super_block::LOOP block除了循环块即归结为一个超级块的循环

	if (sb->taken_prob() < 0.5)
	    sb = sb->fall_succ();
	else
	    sb = sb->take_succ();

	if (sb != 0 && sb != end)
	    path->add_super_block(sb);
    }

    return path;
}

thread * Procedure::partitionThread(super_block * start, super_block * end,
			 thread * curr_thread){
	return NULL;
}

/*
 *construct_super_block_relationship() --- construct super block relationship and super block's control flow graph.
 */
void construct_super_block_relationship(da_cfg* the_cfg, super_block_cfg * sbc)
{
    printf("super_block_cfg:");
    sbc->print_relationship(stdout);
    printf("\n");
    super_block_list_iter iter(sbc->super_blocks());
    while (!iter.is_empty()) {
	super_block *sb = iter.step();
	if (sb->knd() == super_block::LOOP) {
	    loop_block *loop = (loop_block *) sb;
	    cfg_node *entry_node = loop->entry_node();
	    printf("loop_entry_node:");
	    entry_node->print(stdout);
	    printf("\n");
	    assert(entry_node != 0);

	    cfg_node *immed_dom_node = the_cfg->immed_dom(entry_node);

	    if (immed_dom_node == 0)
		sb->set_immed_dom(0);
	    else {
		printf("cfg_node:");
		immed_dom_node->print(stdout);
		printf("\n");
		loop->set_immed_dom(sbc->
				    in_which_super_block(immed_dom_node));
		printf("循环的直接统治节点所在超级块：");
		sbc->in_which_super_block(immed_dom_node)->
		    print_relationship(stdout);
		printf("\n");
	    }
	    cfg_node *succ_node = loop->find_succ_node(the_cfg);
	    assert(succ_node != 0);
	    printf("循环的后继节点：");
	    succ_node->print(stdout);
	    printf("\n");
	    super_block *succsb = sbc->in_which_super_block(succ_node);
	    printf("循环的后继节点所在的超级块：");
	    succsb->print_relationship(stdout);
	    printf("\n");
	    sb->set_immed_pdom(succsb);
	    sb->set_fall_succ(succsb);
	    sb->set_take_succ(0, 0.0);
	} else {
	    cfg_node *node = peek_node(sb);
	    printf("cfg_node:");
	    node->print(stdout);
	    printf("\n");
	    assert(node != 0);

	    cfg_node *immed_dom_node = the_cfg->immed_dom(node);

	    if (immed_dom_node == 0)
		sb->set_immed_dom(0);
	    else {
		printf("immed_dom_node:");
		immed_dom_node->print(stdout);
		printf("\n");
		sb->set_immed_dom(sbc->
				  in_which_super_block(immed_dom_node));
		printf(" 所在超级块：");
		sbc->in_which_super_block(immed_dom_node)->
		    print_relationship(stdout);
		printf("\n");
	    }
	    cfg_node *immed_pdom_node = the_cfg->immed_postdom(node);


	    if (immed_pdom_node == 0)
		sb->set_immed_pdom(0);
	    else {
		printf("immed_postdom_node:");
		immed_pdom_node->print(stdout);
		printf("\n");
		sb->set_immed_pdom(sbc->
				   in_which_super_block(immed_pdom_node));
		printf(" 所在超级块：");
		sbc->in_which_super_block(immed_pdom_node)->
		    print_relationship(stdout);
		printf("\n");
	    }

	    if (node->is_end())
		sb->set_fall_succ(0);
	    else {
		cfg_node *fall_node = node->fall_succ();

		if (fall_node == 0)
		    sb->set_fall_succ(0);
		else {
		    printf("fall_succ:");
		    fall_node->print(stdout);
		    printf("\n");
		    sb->set_fall_succ(sbc->
				      in_which_super_block(fall_node));
		    printf(" 所在超级块：");
		    sbc->in_which_super_block(fall_node)->
			print_relationship(stdout);
		    printf("\n");
		}

		if (!node->is_block()) {
		    printf("node:");
		    node->print(stdout);
		    printf("\n");
		    sb->set_take_succ(0, 0.0);
		} else {
		    cfg_block *block = (cfg_block *) node;

		    if (!block->ends_in_cbr())
			sb->set_take_succ(0, 0.0);
		    else {
			cfg_node *taken_node = block->take_succ();
			if (taken_node == 0)
			    sb->set_take_succ(0, 0.0);
			else {
			    float taken_prob =
				branch_taken_probability(node);
			    sb->set_take_succ(sbc->
					      in_which_super_block
					      (taken_node), taken_prob);
			}
		    }
		}
	    }
	}
    }
}


/*
 *construct_loop() --- construct loop region.创建循环区域
 */
loop_block *Procedure::construct_loop(cfg_node * loop_entry)
{
    bit_set the_loop(0, the_cfg->num_nodes());
    printf("the_cfg_num_nodes:");
    printf("%d\n", the_cfg->num_nodes());
    std::stack < cfg_node * >node_stack;

    cfg_node *loop_end;
    cfg_node_list_iter pred_iter(loop_entry->preds());

    //look up the end node of loop region
    while (!pred_iter.is_empty()) {
		printf("loop_entry_preds:");
		cfg_node *pred_cn = pred_iter.step();
		pred_cn->print(stdout);
		printf("\n");
		if (the_cfg->dominates(loop_entry, pred_cn)
			&& the_cfg->loop_depth(pred_cn) == 1)
			loop_end = pred_cn;
    }

    node_stack.push(loop_end);
    printf("\n");
    printf("loop_entry_number:");
    printf("%d\n", loop_entry->number());
    the_loop.add(loop_entry->number());

    //record the cfg node of loop region
    while (!node_stack.empty()) {
	cfg_node *top = node_stack.top();
	node_stack.pop();

	int num = top->number();
	if (!the_loop.contains(num)) {
	    the_loop.add(num);
	    cfg_node_list_iter top_iter(top->preds());
	    while (!top_iter.is_empty())
		node_stack.push(top_iter.step());
	}
    }

    //allocate loop block
    loop_block *loop = new loop_block();
    loop->set_entry_node(loop_entry);
    loop->set_end_node(loop_end);


    bit_set_iter iter(&the_loop);
    while (!iter.is_empty()) {
	the_cfg->set_loop_depth(the_cfg->node(iter.step()), 1);
    }
    bit_set_iter iter1(&the_loop);
    while (!iter1.is_empty()) {
	int num = iter1.step();
	cfg_node *node = the_cfg->node(num);
	loop->add_block(node);
	if (the_cfg->is_loop_exit(node))
	    loop->add_exit_node(node);

    }

    /* bit_set_iter iter(&the_loop);
       while(!iter.is_empty())
       {
       int num = iter.step();
       cfg_node *node = the_cfg->node(num);
       loop->add_block(node);
       if(the_cfg->is_loop_exit(node) && the_cfg->loop_depth(node) == 1)
       loop->add_exit_node(node);
       }
     */
    return loop;
}

/*
 *partition_loop() --- partition loop region.
 */
loop_block * Procedure::partition_loop(cfg_node * loop_entry)
{
    //construct loop region
    loop_block *loop = construct_loop(loop_entry);
    loop->print();
	return loop;
}


/*
 *peek_node() --- return cfg node which contained by super block.
 */
static cfg_node *peek_node(super_block * sb)
{
    cfg_node_list_iter iter(sb->nodes());
    if (!iter.is_empty())
	return iter.step();
    else
	return 0;
}



void Procedure::printDominatorList(std::ostream& os)const{
	int listSize = dominatorBlockList->size();
	os << "The Number of dominator blocks In the procedure [" << cur_psym->name() << "] is " << listSize << " : \n";
	for(int i = 0; i < listSize; i++){
		os << (*dominatorBlockList)[i]->block_num() << "\t";
	}
	os << "\n";
}


void Procedure::printProcedurePathList(std::ostream& os)const{
	assert(!pathList->empty());
	os << "The Procedure Has " << pathList->size() << " 条 ProcedurePath." << std::endl;
	for(std::vector<ProcedurePath*>::const_iterator cit = pathList->begin(); cit != pathList->end(); cit++){
		const ProcedurePath *theProcPath = *cit;
		theProcPath->printPath(os);
	}
	return ;
}
void Procedure::printCqipList(std::ostream& os)const {
	os << "The cqipList size is : " << cqip_block_list->size() << " .\n";
	for(std::vector<super_block*>::const_iterator cit = cqip_block_list->begin(); cit != cqip_block_list->end(); cit++){
		os << (*cit)->block_num() << "\t";
	}
	os << "\n";
	return;
}





void Procedure::generate_dot(char *procedureName, PrintGraphFlag suffixFlag)
{
	//addByKeyming 20140513
	char filename_before_spmt_instr[256];
	strncpy(filename_before_spmt_instr, "testcase/dot_file/", 256);
	strncat(filename_before_spmt_instr, procedureName, 256);
	char suffixStr[32];
	if(suffixFlag == BEFORE){
		strncpy(suffixStr, "_prev.dot", strlen("_prev.dot")+1);
	}
	else if(suffixFlag == AFTER){
		strncpy(suffixStr, "_after.dot", strlen("_after.dot")+1);
	}
	strncat(filename_before_spmt_instr, suffixStr, strlen(suffixStr));
	FILE *func_dot = fopen(filename_before_spmt_instr, "w");
	if(!func_dot){
		fprintf(stderr, "Cannot create the dotFunction file for the procedure %s", procedureName);
	}
	generate_full_instr_dot(func_dot);
	fclose(func_dot);
}
/**
 * 输出一条指令到fp. 对于普通指令in, 只输出 opcode des_operand src_operand. 对于 标签, 输出标签.
 * @param in
 * @param fp
 * 依赖的全局变量: 无
 */
void print_instruction(instruction* in, FILE *fp = stdout)
{
	assert(in);

	machine_instr *mi = dynamic_cast<machine_instr *> (in);
	if(mi != NULL){
		mi_rr *mirr = dynamic_cast<mi_rr *>(mi);
		if(mirr != NULL){// if mi is mi_rr

			mi_bj *mibj = dynamic_cast<mi_bj *>(mirr);
			if(mibj != NULL){
				//if mi is a jump instruction.

				//1. print the opcode.
				fprintf(fp, "%s\t", in->op_string());

				//2. print the target lable.
				if(mibj->target() != NULL){
					Print_symbol(fp, mibj->target());

				}
				//mibj->print();
				fprintf(fp, "\\n");
				fflush(fp);
				return ;
			}// end of if mi is bj instruction.

			//1. print the opcode.
			fprintf(fp, "%s\t", in->op_string());

			//2. print the dest operand.
			if(mi->num_dsts() ){
				operand opd = mi->dst_op(0);
				if(!opd.is_null()){
						opd.print(in, fp);
						fprintf(fp, "\t");
				}
			}

			//3. print the all (could be more than one) source operand.
			int operand_num = mi->num_srcs();
			for(int i = 0; i < operand_num; i++){
				operand opd = mi->src_op(i);
				if(!opd.is_null()){
					opd.print(in, fp);
					fprintf(fp, "\t");
				}
			}
			fprintf(fp, "\\n");

		} // end of if mirr != NULL
		else{

			mi_lab *milab = dynamic_cast<mi_lab *>(mi);
			if(milab){
				//milab->print(fp);
				milab->label()->sym_node::print(fp);
				fprintf(fp,":\\n");			/* mips-specific ending */
			   // mips_print_reloc(milab, fp);
			}
		}
	}
	fflush(fp);

}
/**
 * 生成一个打印有全部指令的cfg dot 文件. 该函数会打印处每个基本块的所有指令, 标签.  每一个基本块被当作一个node 处理
 * @param fp 输出结果的文件指针. Point to the output file.
 */
void Procedure::generate_full_instr_dot(FILE* fp)
{

	char proc_name[32];
	char temp[16], temp2[16];

	std::vector<int> spawnNodes;
	std::vector<int> cqipNodes;


	fprintf(fp, "digraph G{\n");
	fprintf(fp, "\tlabel = \"%s\"", this->getCurPsym()->name());
	fprintf(fp, "\tstyle = \"dashed\";\n");
	fprintf(fp, "\tcolor = purple;\n");


	for(int i = 0; i < the_cfg->num_nodes(); i++){
		cfg_node *cn = the_cfg->node(i);
		if (cn->is_begin()) {
			fprintf(fp, "\tNode%s [label = \"%s\"];\n",
					itoa(cn->number(), temp, 10), "Begin");
			//((cfg_begin *) cn)->print();

		} else if (cn->is_end()) {
			fprintf(fp, "\tNode%s [label = \"%s\"];\n",
					itoa(cn->number(), temp, 10), "End");
			//((cfg_end *) cn)->print(fp);
		} else {
			fprintf(fp, "\tNode%s [label = \"B%s_%d\\n",
					itoa(cn->number(), temp, 10),
					itoa(cn->number(), temp2, 10),
					cfg_node_static_instr_size(cn));
	//		((cfg_block *) cn)->print_with_instrs(stdout);
			//puts("");

		    cfg_node_instr_iter cnii(cn);
		    while (!cnii.is_empty()) {
				instruction *in = cnii.step()->instr();
				//in->instruction::print(fp, 1, 1);

				print_instruction(in, fp);
				/*
				fprintf(fp, "%s\t", in->op_string());
				//print the operand.
				machine_instr *mi = dynamic_cast<machine_instr *> (in);
				if(mi != NULL){
					if(mi->num_dsts() ){
						operand opd = mi->dst_op(0);
						if(!opd.is_null()){
							opd.print(in, fp);
							fprintf(fp, "\t");
						}
					}
					int operand_num = mi->num_srcs();
					for(int i = 0; i < operand_num; i++){
						operand opd = mi->src_op(i);
						if(!opd.is_null()){
							opd.print(in, fp);
							fprintf(fp, "\t");
						}
					}

					//fprintf(fp, "%d\t", mi->num_dsts());
					//fprintf(fp, "\\n");
				}
				else{
					in_lab *inlab = dynamic_cast<in_lab *>(in);
					if(inlab){
						inlab->print(fp);
					}
				}
				fprintf(fp, "\\n");
				fflush(fp);

				*/


				/**
				 * 测试该基本块是否包含spawn, cqip等特殊指令. 如果包含, 则加入到特殊的vector里.
				 */
				if(strcmp(in->op_string(), "spawn") == 0){
					spawnNodes.push_back(cn->number());
				}
				else if(strcmp(in->op_string(), "cqip") == 0){
					cqipNodes.push_back(cn->number());
				}
		    }
		    fprintf(fp, "\"];\n");
		}
/**
 * 下面打印的是节点之间的指向关系.
 */

		fprintf(fp, "\tNode%s -> {", itoa(cn->number(), temp, 10));

		cfg_node_list_iter cnl_iter(cn->succs());
		while (!cnl_iter.is_empty()) {
			cfg_node *succ_cn = cnl_iter.step();
			//for the begin block, there is edge from begin block to the end block, so we must delete this edge from cfg.
			if (cn->is_begin() && succ_cn->is_end())
				continue;

			fprintf(fp, "Node%s ",
					itoa(succ_cn->number(), temp, 10));
		}
		fprintf(fp, "}\n");

	}
	// 此时已经退出了for loop.
	/**
	 * 下面对于包含spawn 和 cqip的点进行特殊颜色 特殊方框的打印处理.
	 */

	//对于一个基本块, 如果只包含spawn 打red, 只包含cqip打 yellow, contain the both , print blue.
	for(int i = 0; i < spawnNodes.size(); i++){
		if(std::find(cqipNodes.begin(), cqipNodes.end(), spawnNodes[i]) == cqipNodes.end()){
			fprintf(fp, "\tNode%s [shape = box ,style=filled ,color=red];\n",
					itoa(spawnNodes[i], temp, 10));
		}
		else{
			fprintf(fp, "\tNode%s [shape = ellipse ,style=filled ,color=blue];\n",
					itoa(spawnNodes[i], temp, 10));
		}
	}

	for(int i = 0; i < cqipNodes.size(); i++){
		if(std::find(spawnNodes.begin(), spawnNodes.end(), cqipNodes[i]) == spawnNodes.end()){
			fprintf(fp, "\tNode%s [shape = polygon ,style=filled ,color=yellow];\n",
					itoa(cqipNodes[i], temp, 10));
		}

	}


	fprintf(fp, "}\n");
}



