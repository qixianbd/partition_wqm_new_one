/*
 * ThreadPartition.cc
 *
 *  Created on: 2015年1月6日
 *      Author: keyming
 */

#include "thread_partition.h"
#include "super_block.h"
#include "thread.h"
#include "threshold.h"
#include "procedure_path.h"

/**
 * static function set
 */
static unsigned int find_min_dependence(thread* currentThread, thread* futureThread, tnle* &spawn_ins_pos);


ThreadPartition::ThreadPartition(ProcedurePath* theProcPath): threadList(NULL), procPath(theProcPath),
								currentThread(NULL), futureThread(NULL), curThreadNum(0){
	threadList = new std::vector<thread*>();
}

super_block_path *ThreadPartition::find_most_likely_path(super_block * begin, super_block * end){
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

/*
 *find_optimal_dependence() --- find the optimal dependence between current thread and future thread, and return the spawn position
 */
static unsigned int find_min_dependence(thread* currentThread, thread* futureThread, tnle* &spawn_ins_pos){

}

void ThreadPartition::partition_thread() {
	if(this->procPath->getCqipNumber() < 1){			// the path is too short so that we can not partition it into more threads (>=2). we need no partition here.
		return ;
	}

	procPath->printThreadBlock(std::cout);

	for(unsigned int threadNum = 0; threadNum < procPath->getCqipNumber(); threadNum++){
		std::vector<super_block*> *cur_sblock_list, *future_sblock_list;
		cur_sblock_list = procPath->getThreadList()->at(threadNum);
		future_sblock_list = procPath->getThreadList()->at(threadNum+1);

		thread *cur_thread = NULL, *future_thread = NULL;
		cur_thread = new thread();
		future_thread = new thread();
		cur_thread->add_super_block_vector(cur_sblock_list);
		future_thread->add_super_block_vector(future_sblock_list);

		//1. find the optional dependence count between the current thread the future threads.
		tnle* spawn_ins_pos = NULL;
		unsigned int opt_dep_count = find_min_dependence(cur_thread, future_thread, spawn_ins_pos);
		if(opt_dep_count >= threshold::dependence_threshold){
			// we should not thread this thread. That means we should not insert the spawn and pslice segment.
			// then how about the cqip instruction? For it seems to produce no harm for us to execute a cqip, so we hold the cqip instruction.
			return ;
		}

		//2. the dep is suitable, then the spawn_ins_pos becomes available and legal to use.
		cur_thread->set_spawned_pos(spawn_ins_pos);
		cur_thread->set_thread_type(thread::NONSPECULATIVE);

		//3. Then we should found out the pslice segment.
		cur_thread->finish_construction();

		//4. After found out the spawn pos, pslice segment, then write the infomation to the cfg lowlevel representation.
		cur_thread->write_spawn_info();
	}

}

ThreadPartition::~ThreadPartition() {
	delete threadList;
}
