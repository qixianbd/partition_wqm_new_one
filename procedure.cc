/*
 * procedure.cc
 *
 *  Created on: 2014年12月28日
 *      Author: keyming
 */
#include <stack>
#include "procedure.h"
#include "user_options.h"
#include "misc.h"
#include "thread_partition.h"
#include "procedure_path.h"

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
			findDominatorList();
			printDominatorList(std::cout);
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


Procedure::Procedure(proc_sym *the_cur_psym) : cur_psym(the_cur_psym), cur_psymtab(NULL), the_cfg(NULL), the_bit_mgr(NULL),
		the_full_cnl(NULL), the_teller(NULL), the_reach(NULL), the_scfg(NULL),
		threads(NULL), loops(NULL), pathList(NULL), dominatorBlockList(NULL){
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

void Procedure::findAllSuitablePathList(){
	super_block *start_block = the_scfg->entry();
	 super_block *end_block = the_scfg->exit();
	super_block* pdom = start_block->immed_pdom();
	super_block_path* likely_path = ThreadPartition::find_most_likely_path(start_block, end_block);
	ProcedurePath *procPath = new ProcedurePath(likely_path);
	procPath->printCqipList(std::cout);
	procPath->printPath(std::cout);
	pathList->push_back(procPath);
	return ;
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

void Procedure::printDominatorList(std::ostream& os)const{
	int listSize = dominatorBlockList->size();
	os << "The Number of dominator blocks In the procedure [" << cur_psym->name() << "] is " << listSize << " : \n";
	for(int i = 0; i < listSize; i++){
		os << (*dominatorBlockList)[i]->block_num() << "\t";
	}
	os << "\n";
}

void Procedure::processProcedure(){

	UserOptions* options = UserOptions::getUserOptions();
		if (options->getVerbose()) {
			//print_all_definee(stdout, the_reach, the_scfg);
		}
		//------test for min_cut.h --------------------

		fprintf(options->getNodeNumTestFilePtr(), "\n当前访问函数:%s:\n", cur_psym->name());
		std::cout << "当前正在访问函数:" << cur_psym->name() << std::endl;
		if(strcmp(cur_psym->name(), "walksub") == 0){
			std::cout << "当前正在访问函数:" << cur_psym->name() << std::endl;
		}
		this->findAllSuitablePathList();
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
