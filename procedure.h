/*
 * procedure.h
 *
 *  Created on: 2014年12月28日
 *      Author: keyming
 */

#ifndef PROCEDURE_H_
#define PROCEDURE_H_
#include <vector>
#include "common.h"
#include "da_cfg.h"
#include "super_block.h"
#include "super_block_cfg.h"
#include "thread.h"
#include <iostream>
#include <ostream>


class ProcedurePath;

class Procedure{
private:
	proc_sym* cur_psym;
	mproc_symtab* cur_psymtab;

	da_cfg* the_cfg;		/*current procedure da_cfg */
	operand_bit_manager *the_bit_mgr;			/*operand bit manager */
	cfg_node_list *the_full_cnl;							/*the cfg node list of full cfg */
	reg_def_teller *the_teller ; /*regiter define teller */
	reaching_def_problem *the_reach;				/*reaching define problem */

	super_block_cfg* the_scfg;							/*super block cfg composed of super block */
	std::vector<thread *>*threads;						/* the thread list of this procedure */
	std::vector < loop_block * >* loops;

	std::vector<ProcedurePath*>* pathList;
	std::vector<super_block* >* dominatorBlockList;

	static Procedure* currentProcedure;


protected:
	void init_dacfg(proc_sym *cur_psym);
	loop_block *construct_loop(cfg_node * loop_entry);
	loop_block * partition_loop(cfg_node * loop_entry);
public:
	enum PrintGraphFlag{BEFORE = 0, AFTER = 1};
	Procedure(mproc_symtab* cur_psymtab, proc_sym *the_cur_psym);
	super_block_cfg*  consturct_super_block_cfg();
	/*
	 *partition_thread() --- partition thread for non-loop region.
	 */
	thread *partitionThread(super_block * start, super_block * end,
				 thread * curr_thread);
public:		//getters
	proc_sym* getCurPsym() const;
	mproc_symtab* getCurPsymtab() const;
	std::vector<loop_block*>* getLoops() const;
	operand_bit_manager* getTheBitMgr() const;
	da_cfg* getTheCfg() const;
	cfg_node_list* getTheFullCnl() const;
	reaching_def_problem* getTheReach() const;
	super_block_cfg* getTheScfg() const;
	reg_def_teller* getTheTeller() const;
	std::vector<thread*>* getThreads() const;
	std::vector<super_block*>* getDominatorBlockList()const;

	void processProcedure();
	void findAllSuitablePathList();
	void findDominatorList();

public:
	static Procedure* getCurrentProcedure();
/**
 * The methods in this section are used to print out the information need to debug in the development time.
 */
public:
	void printDominatorList(std::ostream& os)const;
	void generate_full_instr_dot(FILE* fp);
	void generate_dot(char *procedureName, PrintGraphFlag suffixFlag);
};




#endif /* PROCEDURE_H_ */
