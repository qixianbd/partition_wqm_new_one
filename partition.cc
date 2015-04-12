/*
 * partition.cc
 *
 *  Created on: 2014年12月26日
 *      Author: keyming
 */
#include "partition.h"
#include "procedure.h"


extern mproc_symtab *cur_psymtab;


/*
 *Process_file() -- reads input SUIF file processing at one procedure at a time.
 */
void processFile(file_set_entry * fse) {
	proc_sym *cur_psym = NULL;
	fse->reset_proc_iter();

	while ((cur_psym = fse->next_proc())) {
		debug(3, "Processing procedure %s:\n", cur_psym->name());
		printf("%s\n", cur_psym->name());


		cur_psymtab = Read_machine_proc(cur_psym, TRUE, FALSE);		/*read procedure with expression trees */

		Procedure procedure(cur_psymtab, cur_psym);
		procedure.processProcedure();		//process procedure partition.

		Write_machine_proc(cur_psym, fse);		/*write procedure with expressioni trees */
		delete cur_psymtab;
	}
	//print the stat information
	Procedure::printProcPathStat(std::cout);
	return ;
}


//static void processProcedure(proc_sym *cur_psym) {
//	/*deal with procedure symbol ; make sure its legal*/
//	Process_symtab(cur_psym->block()->proc_syms(), TRUE, stdout);
//	/*init procedure cfg which contained data flow analysis */
//	the_cfg = new da_cfg(cur_psym->block(), TRUE, TRUE, TRUE);
//	the_cfg->remove_unreachable_blocks();
//	the_cfg->find_dominators();
//	the_cfg->find_postdominators();
//	the_cfg->find_natural_loops();
//	the_cfg->remove_shadows();
//	/*init procedure cfg_node_list */
//	the_full_cnl = the_cfg->reverse_postorder_list(); //深度优先排序，加快迭代速度
//
//	the_bit_mgr = new operand_bit_manager(NULL, NULL, 1024, TRUE);
//	enroll_variables(cur_psym->block(), the_bit_mgr); //登记变量
//	the_teller = new reg_def_teller(cur_psym, the_bit_mgr); /*contain local variable */
//	the_reach = new reaching_def_problem(the_cfg, the_teller);
//	/*print verbose information of bit manager */
//
//	if (verbose) {
//		printf("\n###the information of bit manager###\n");
//		print_bit_man(the_bit_mgr);
//	}
//	the_cfg->find_live_vars_more(the_bit_mgr);
//
//	// \brief : print control flow graph and data flow analysis before partition
//	if (verbose) {
//		printf("************Before partition************\n\n");
//		printf("###control flow graph begin###\n\n");
//		the_cfg->print_cfg();
//		printf("###control flow graph end###\n\n");
//		printf("###data flow analysis begin###\n\n");
//		the_cfg->print_dfa();
//		printf("\n");
//		printf("###data flow analysis end###\n\n");
//	}
//	// \brief : generate dot file to form *.png picture
//	if (GenerateGraph) {
//		the_cfg->generate_dot(dot_fp);
//
//		//addByKeyming 20140513
//		the_cfg->generate_dot(cur_psym->name(), da_cfg::BEFORE);
//	}
//
//	//print loop_depth
//	/*  for(int i = 0; i < the_cfg->num_nodes(); ++i){
//	 int depth = the_cfg->loop_depth(i);
//	 boolean bLoopBegin = the_cfg->is_loop_begin(i);
//	 boolean bLoopEnd = the_cfg->is_loop_exit(i);
//
//	 printf("Node_%d depth is %d; begin:%d  exit %d\n", i, depth, bLoopBegin, bLoopEnd);
//	 }
//	 */
//	fprintf(loop_fp, "\n当前访问函数:%s:\n", cur_psym->name());
//
//	/*partition loops and construct super block cfg */
//	threads = new std::vector<thread*>();
//	loops = new std::vector<loop_block*>();
//	the_scfg = construct_super_blocks();
//
//	if (verbose) {
//		print_all_definee(stdout, the_reach, the_scfg);
//	}
//	//------test for min_cut.h --------------------
//
//	fprintf(test_fp, "\n当前访问函数:%s:\n", cur_psym->name());
//
//	/**
//	 * addbykeyming 10140528
//	 */
//	the_scfg->print_dom_block_list();
//	non_loop_partition(the_scfg);
//
//	/*对整个程序的超级块进行划分 */
//	/* super_block *entry_block = the_scfg->entry();
//	 super_block *start_block = entry_block->fall_succ();
//	 super_block *end_block = the_scfg->exit();
//	 thread *curr_thread = create_new_thread(start_block);
//	 curr_thread = partition_thread(start_block, end_block, curr_thread);*/
//	//the_cfg->print_cfg();
//
//	/*write partition information */
//	write_spawn_info();
//	if (verbose) {
//		printf("\n*********After partition************\n\n");
//		the_cfg->print_cfg();
//	}
//
//	if (GenerateGraph) {
//		//addByKeyming 20140513
//		the_cfg->generate_dot(cur_psym->name(), da_cfg::AFTER);
//	}
//
//	/*clean up */
//	delete the_reach;
//	delete the_teller;
//	delete the_bit_mgr;
//	delete the_full_cnl;
//	delete the_cfg;
//	delete the_scfg;
//	the_cfg = NULL;
//	the_scfg = NULL;
//
//}



