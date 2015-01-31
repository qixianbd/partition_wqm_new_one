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
	unsigned int compute_spawning_distance(super_block * spawn_path, machine_instr * spawn_instr);
	void pruning_instrs_before_spawn(bit_set * defs, super_block * path, tnle * spawn_pos);
public:
	ThreadPartition(ProcedurePath* theProcPath);
	void partition_thread();
	~ThreadPartition();

	static super_block_path *find_most_likely_path(super_block * begin, super_block * end);

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



#endif /* THREADPARTITION_H_ */
