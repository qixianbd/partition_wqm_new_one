/*
 * thread_partition.h
 *
 *  Created on: 2015年1月6日
 *      Author: keyming
 */

#ifndef THREADPARTITION_H_
#define THREADPARTITION_H_

#include <vector>
#include "da_cfg.h"

class Procedure;
class thread;
class super_block;
class super_block_path;
class ProcedurePath;


class ThreadPartition{
private:
	std::vector<thread*>* threadList;
	ProcedurePath* procPath;
	thread* currentThread, *futureThread;
	unsigned int curThreadNum;

protected:
	unsigned int find_min_dependence(thread* currentThread, thread* futureThread, tnle* &spawn_ins_pos);

	void finish_construction(thread* current_thread, thread* future_thread);
	super_block* find_permitted_range_start(std::vector<super_block*> *cur_sblock_list, super_block* &end_block);
	super_block_path* getRangePath(std::vector<super_block*> *cur_sblock_list, super_block* start_block, super_block* range_end_block);
protected:

	static void print_bitset_with_instr(reaching_def_problem * r, bit_set * bt);
	void fillPslice(super_block *pslice_path, thread* current_thread,  label_sym *cqip_pos_num);
	static void pruning_cal_instrs(bit_set * defs, super_block * spawn_path);
public:
	ThreadPartition(ProcedurePath* theProcPath);
	void partition_thread();
	void partition_thread_new1();
	~ThreadPartition();

	static super_block_path *find_most_likely_path(super_block * begin, super_block * end);
	static unsigned int compute_spawning_distance(super_block * spawn_path, machine_instr * spawn_instr);
	static bit_set *search_pslice_instrs(bit_set * liveins, super_block * spawn_path, tnle * spawn_pos, bit_set * defs);
	static void pruning_instrs_before_spawn(bit_set * defs, super_block * path, tnle * spawn_pos);
	void findPermittedSpawnRange(super_block*& begin, super_block*& end);

	/**
	 * getters and setters.
	 */
public:
	std::vector<thread*>* getThreadList() const {
		return threadList;
	}
	void setThreadList(std::vector<thread*>* threadList) {
		this->threadList = threadList;
	}

};

/*
 *construct_pslice() --- construct pre-compute slice.
 */
extern tree_node_list *construct_pslice(bit_set * ins_dep, label_sym * cqip_pos,
				 tree_node_list * pslice);

#endif /* THREADPARTITION_H_ */
