/*
 * ThreadPartition.cc
 *
 *  Created on: 2015年1月6日
 *      Author: keyming
 */

#include "thread_partition.h"
#include "super_block.h"
#include "thread.h"



ThreadPartition::ThreadPartition(): threadList(NULL){
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

thread* ThreadPartition::partition_thread(super_block* start, super_block* end,
		thread* curr_thread) {
	if(start == end || start->likely_succ() == end){
		return curr_thread;
	}

	super_block* pdom = start->immed_pdom();
	super_block_path* likely_path = ThreadPartition::find_most_likely_path(start, pdom);


	return NULL;
}

ThreadPartition::~ThreadPartition() {
	delete threadList;
}
