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
#include <queue>
#include <string>

class ProcedurePath;

struct ProcPathCount{
	std::string procName;
	int pathCount;
	ProcPathCount(std::string name, int count):procName(name), pathCount(count){

	}
};
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
	std::vector<loop_block* >* natual_loop_list;

	std::vector<ProcedurePath*>* pathList;		// all the paths of this procedure. from the entry of the procedure, to the end of the procedure
	std::vector<super_block* >* dominatorBlockList;		// the dominator list of super blocks of this procedure.
	std::vector<super_block*> *cqip_block_list;					// all the super blocks that can be the cqip super block.   			@keyming 20150202

	ProcedurePath *likelyPath;				// The most likely path (represent by super block list) of this procedure.
	std::vector<super_block *>* theBranchBlockList;



	static Procedure* currentProcedure;
	static std::vector<ProcPathCount*> *procPathStat;

protected:
	void init_dacfg(proc_sym *cur_psym);
	loop_block *construct_loop(cfg_node * loop_entry);
	loop_block * constructAndGetLoops(cfg_node * loop_entry);
	void init_thread_block();
	void updatePathListStat()const;
public:
	enum PrintGraphFlag{BEFORE = 0, AFTER = 1};
	Procedure(mproc_symtab* cur_psymtab, proc_sym *the_cur_psym);
	super_block_cfg*  consturct_super_block_cfg();
	loop_block *create_thread_from_loop(loop_block * loop, super_block * spawn_path,  tnle * spawn_pos);
	/*
	 *partition_thread() --- partition thread for non-loop region.
	 */
	thread *partitionThread(super_block * start, super_block * end,
				 thread * curr_thread);
	void loop_partition();
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
	std::vector<super_block*>* getCqipBlockList()const;
	ProcedurePath* getProceurePath()const;
	std::vector<super_block *>* getTheBranchBlockList()const;
protected:
	void addToCqipBlockList(super_block* block);
public:		// key methods that are exposed to the outer class part.
	void processProcedure();
	void determineThreadSize();			// find the cqip block of the procedure. By determining the cqip block, we cut the procedure into cqip_block_list->size() + 1 threads.

	void findAllProcedurePathList(std::ofstream& os);
	void findMostLikelyThreadPath(std::vector<super_block_path*>* &most_likely_thread_path_list);
	void pushTheProcedurePath(std::vector<super_block_path*>* threadPath, int threadBlockNum);
	void findDominatorList();


	void findAllPathInThreadBlock(super_block *begin, super_block *end);
	std::vector<super_block_path*>*  findMostLikelySubPathInThreadBlock(super_block *begin, super_block *end);

	void fillInPathList(std::vector<super_block_path*>* thePathList);
	ProcedurePath* findMostLikelyPathOfProc();


public:
	void findPermitBranchBlock();



public:
	static Procedure* getCurrentProcedure();
/**
 * The methods in this section are used to print out the information need to debug in the development time.
 */
public:
	void printDominatorList(std::ostream& os)const;
	void printCqipList(std::ostream& os)const;
	void printProcedurePathList(std::ostream& os)const;
	void printBranchBlockList(std::ostream& os)const;
	void generate_full_instr_dot(FILE* fp);
	void generate_dot(char *procedureName, PrintGraphFlag suffixFlag);
	static void printProcPathStat(std::ostream& os);
	std::vector<super_block_path*> * findSubPathInDoms(super_block *dom_block_start, super_block* dom_block_end);

/**
 * This Section 用来包含一些过时的（之前测试时或作demo时用来使用的函数）
 */
public:
	void findAllSuitablePathList();
};


void print_instruction(instruction* in, FILE *fp = stdout);

#endif /* PROCEDURE_H_ */
