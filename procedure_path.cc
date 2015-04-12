
/*
 * procedure_path.cc
 *
 *  Created on: 2015年1月22日
 *      Author: keyming
 */

#include "procedure_path.h"
#include "procedure.h"
#include "threshold.h"
#include "super_block_cfg.h"

ProcedurePath::ProcedurePath(super_block_path *sbpath, std::vector<super_block*> *the_cqip_block_list):path(NULL),  cqip_block_list(the_cqip_block_list), thread_list(NULL), keySubPathThreadBlock(-1){
	path = new std::vector<super_block*>();
	//cqip_block_list = new std::vector<super_block*>();
	thread_list = new std::vector<thread_block*>();

	sbpath->print(stdout);
	super_block_list *pathList = sbpath->super_blocks();
	 super_block_list_iter iter(pathList);
	 super_block* block = NULL;
	 while(!iter.is_empty()){
		 block = iter.step();
		 path->push_back(block);
	 }
	 keySubPathThreadBlock = sbpath->getThreadBlockNum();
	 fillCqipList();
}

ProcedurePath::~ProcedurePath(){
	delete path;
	delete thread_list;
}


bool ProcedurePath::isDominator(super_block* block){

	std::vector<super_block*> *dominatorList = Procedure::getCurrentProcedure()->getDominatorBlockList();
	std::vector<super_block*>::const_iterator cit;
	for(cit = dominatorList->begin(); cit != dominatorList->end(); cit++){
		if(block == *cit){
			return true;
		}
	}
	return false;
}

static unsigned int super_block_list_size(std::vector<super_block*> *sblock_list){
	unsigned int list_size = 0;
	for(std::vector<super_block*>::const_iterator cit = sblock_list->begin(); cit != sblock_list->end(); cit++){
		list_size += (*cit)->size();
	}
	return list_size;
}

void ProcedurePath::divideToThreadBlock(){
	unsigned int threadSize = 0;
	std::vector<super_block*> super_block_list;
	std::vector<super_block*>::iterator cqipIter, pathIter;
	for(pathIter= path->begin(), cqipIter = cqip_block_list->begin();pathIter != path->end(); ){
		if(cqipIter != cqip_block_list->end()){
			while(pathIter != path->end() && (*pathIter)->block_num() != (*cqipIter)->block_num() ){
				super_block_list.push_back(*pathIter);
				pathIter++;
			}
			cqipIter++;
		}
		else{
			while(pathIter != path->end()){
				super_block_list.push_back(*pathIter);
				pathIter++;
			}
		}
		addToThreadList(&super_block_list);
		super_block_list.clear();
	}
}

void ProcedurePath::addToThreadList(std::vector<super_block*>* block_list){
	if(block_list->empty()){
		std::cout << "Warning: the thread is empty." << std::endl;
		return ;
	}

	std::vector<super_block*> *the_block_list = new std::vector<super_block*>();
	for(std::vector<super_block*>::iterator it = block_list->begin();it != block_list->end(); it++){
		the_block_list->push_back(*it);
	}
	thread_list->push_back(the_block_list);
	return ;
}

void ProcedurePath::determineThreadSize(){
	if(this->size() < 2* threshold::thread_size_lower){		// this path is too short to cut into at least two threads.
		return ;
	}

	std::vector<super_block*> *dominatorList = Procedure::getCurrentProcedure()->getDominatorBlockList();
	std::vector<super_block*> pcur_thread, pfuture_thread;


	int path_pos = 0, dom_pos = 0;
	int pre_thread_size = 0;
	while(path_pos < path->size()  ){
		while(path_pos < path->size()  && super_block_list_size(&pcur_thread) < threshold::thread_size_lower ){
			pcur_thread.push_back((*path)[path_pos]);				// push back the dominator blocks.
			path_pos++;
			while(path_pos < path->size() && !ProcedurePath::isDominator( (*path)[path_pos] )){
				pcur_thread.push_back( (*path)[path_pos] );			// push back the non-dominator blocks.
				path_pos++;
			}
		}
		pre_thread_size = (pre_thread_size == 0 ? super_block_list_size(&pcur_thread): pre_thread_size);
		int pfuture_thread_size = this->size() - pre_thread_size;
		if(path_pos < path->size()  && pfuture_thread_size >= (int)threshold::thread_size_lower){
			super_block *block = (*path)[path_pos];
#define DEBUG_THIS
#ifdef DEBUG_THIS
			if(block->block_num() == 11){
				std::cout << "The path size is" << this->size() << ", the future thread size  is" << pfuture_thread_size << std::endl;
			}
#endif
			cqip_block_list->push_back(block);
			pre_thread_size += super_block_list_size(&pcur_thread);
			addToThreadList(&pcur_thread);
			pcur_thread.clear();
		}
		else{
			if(!cqip_block_list->empty()){
				while(path_pos < path->size() ){
					super_block *block = (*path)[path_pos];
					pcur_thread.push_back(block);
					path_pos++;
				}
				addToThreadList(&pcur_thread);
				pcur_thread.clear();
			}
			break;
		}
	}

}

void ProcedurePath::fillCqipList(){
	assert(!path->empty());				// if is empty then it will be have no start block used in the followiing code.
	//determineThreadSize();
	divideToThreadBlock();
}



void ProcedurePath::addSuperBlock(super_block* block) {
	path->push_back(block);
}

unsigned int ProcedurePath::blockNumber() {
	return path->size();
}

int ProcedurePath::getKeyThreadBlock()const{
	return this->keySubPathThreadBlock;
}

unsigned int ProcedurePath::size() {
	assert(!path->empty());
	unsigned int pathSize = 0;
	std::vector<super_block*>::const_iterator cit;
	for(cit = path->begin(); cit != path->end(); cit++){
		pathSize += (*cit)->size();
	}
	return pathSize;
}

unsigned int ProcedurePath::getCqipNumber()const {
	return cqip_block_list->size();
}

super_block* ProcedurePath::getCqipBlock(int n)const {
	assert(n >= 0 && n < cqip_block_list->size());
	return (*cqip_block_list)[n];
}

void ProcedurePath::printCqipList(std::ostream& os)const {
	os << "The cqipList size is : " << cqip_block_list->size() << " .\n";
	for(std::vector<super_block*>::const_iterator cit = cqip_block_list->begin(); cit != cqip_block_list->end(); cit++){
		os << (*cit)->block_num() << "\t";
	}
	os << "\n";
	return;
}

void ProcedurePath::printPath(std::ostream& os) const {
	os << "#The Path  with key subpath in Thread Block "  << keySubPathThreadBlock << ", and it has " << path->size() << " Nodes #,  ";
	for(std::vector<super_block*>::const_iterator cit = path->begin(); cit != path->end(); cit++){
		os << (*cit)->block_num() << " \t";
	}
	os << "\n";
	return;
}


void ProcedurePath::printThreadBlock(std::ostream& os)const{
	os << "In procedure " << Procedure::getCurrentProcedure()->getCurPsym()->name() << "\n";
	os << "This path can be partition into " << (this->getCqipNumber() + 1)  <<  " threads.\n";
	if((this->getCqipNumber() + 1) != this->thread_list->size()){
		std::cout << "the get cqipNUM is " << this->getCqipNumber() << ", the thread list size is " << this->getThreadList()->size() << std::endl;
		assert((this->getCqipNumber() + 1) == this->thread_list->size());
	}
	assert((this->getCqipNumber() + 1) == this->thread_list->size());

	unsigned int count = 0;
	for(std::vector<thread_block*>::const_iterator cit = thread_list->begin(); cit != thread_list->end(); cit++){
		thread_block *super_block_list = *cit;
		os << "thread " << count++  << " : ";
		for(thread_block::const_iterator ct = (*cit)->begin(); ct != (*cit)->end(); ct++ ){
			os << (*ct)->block_num() << "\t";
		}
		os << " \n";
	}
	return ;
}

bool ProcedurePath::haveTheSamePath(const ProcedurePath* pp)const{
	std::vector<super_block*> *ppPath = pp->path;
	std::vector<super_block*>::const_iterator cit = path->begin(), pcit = ppPath->begin();
	for(; cit != path->end() && pcit != ppPath->end(); cit++, pcit++){
		if((*cit)->block_num() != (*pcit)->block_num()){
			return false;
		}
	}
	if(cit == path->end() && pcit == ppPath->end()){
		return true;
	}
	return false;
}


