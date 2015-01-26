/*
 * thread_partition.h
 *
 *  Created on: 2015年1月6日
 *      Author: keyming
 */

#ifndef THREADPARTITION_H_
#define THREADPARTITION_H_

#include <vector>

class Procedure;
class thread;
class super_block;
class super_block_path;

class ThreadPartition{
private:
	std::vector<thread*>* threadList;

protected:

public:
	ThreadPartition();
	thread *partition_thread(super_block * start, super_block * end, thread * curr_thread);
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
