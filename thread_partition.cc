/*
 * ThreadPartition.cc
 *
 *  Created on: 2015年1月6日
 *      Author: keyming
 */

#include <limits.h>
#include "thread_partition.h"
#include "super_block.h"
#include "thread.h"
#include "threshold.h"
#include "procedure_path.h"
#include "procedure.h"
#include "misc.h"

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

unsigned int ThreadPartition::compute_spawning_distance(super_block * spawn_path, machine_instr * spawn_instr){
    unsigned int size = 0;
    cfg_node_list_iter iter(spawn_path->nodes());

    while (!iter.is_empty()) {
	cfg_node *curr_node = iter.step();
	if (curr_node->is_block()) {
	    cfg_block *block = (cfg_block *) curr_node;
	    if(block->contains(((instruction *)spawn_instr)->parent()->list_e())){
	        size = block_size_from_instr(block, spawn_instr);
	    }else if(size == 0){
	        continue;
	    }else{
	        size += block_size(block);
	    }
	}
    }
    return size;
}

/*
 *pruning_instrs_before_spawn() --- prune the latest define point of the instructions before spawn position
 裁剪spawn点之前的指令的最近定义点，这个函数的输入是定义点的指令，不是所有的指令
 输入发起线程的两个cqip点之间的所有的定义点指令，然后将spawn点之前的定义点指令去除
 */
void ThreadPartition::pruning_instrs_before_spawn(bit_set * defs, super_block * path, tnle * spawn_pos)
{
	Procedure *proc = Procedure::getCurrentProcedure();
	reaching_def_problem *the_reach = proc->getTheReach();
    cfg_node_list_iter cnli(path->nodes());
    while (!cnli.is_empty()) {
	cfg_node *cn = cnli.step();
	if (cn->is_block()) {
	    cfg_block *block = (cfg_block *) cn;
	    cfg_node_instr_iter cnii(block);
	    while (!cnii.is_empty()) {
		tree_instr *test = cnii.step();
		if (test->list_e() == spawn_pos)
		    return;
		else {
		    //返回test->instr()这条指令中的第一个定义点
		    int first_id =
			the_reach->catalog()->first_id(test->instr());
		    //返回test->instr()这条指令中定义点的数量
		    int num = the_reach->catalog()->num_ids(test->instr());
		    for (int i = 0; i < num; i++)
			//设置first_id + i位置为0
			defs->remove(first_id + i);

		}
	    }
	}
    }
}


/*
 *find_optimal_dependence() --- find the optimal dependence between current thread and future thread, and return the spawn position
 */
unsigned int ThreadPartition::find_min_dependence(thread* current_thread, thread* future_thread, tnle* &spawn_ins_pos){

	unsigned int opt_dep_count = UINT_MAX;

	bit_set liveins;
	Procedure *proc = Procedure::getCurrentProcedure();
	da_cfg* the_cfg = proc->getTheCfg();
	operand_bit_manager *the_bit_mgr = proc->getTheBitMgr();
	reaching_def_problem *the_reach = proc->getTheReach();

    the_cfg->find_liveins(future_thread->convert_to_super_block(), the_bit_mgr, &liveins);

    unsigned int spawning_distance = 0xffffffff;
    super_block_path* spawn_cqip_path = current_thread;
    super_block *spawn_blocks = spawn_cqip_path->convert_to_super_block();

    bit_set *original_ins_dep = new bit_set(0, the_reach->catalog()->num_defs());
    search_latest_define_point(&liveins, spawn_blocks, original_ins_dep);

    bit_set *ins_dep = new bit_set(0, the_reach->catalog()->num_defs());

    int spawn_pos_end = spawn_blocks->instr_size();
    for(int counter = 0; counter < spawn_pos_end; counter++){
    	opt_dep_count = UINT_MAX;
    	machine_instr *spawn_pos_instr = spawn_blocks->instr_access(counter);
    	spawn_ins_pos = spawn_pos_instr->parent()->list_e();
    	*ins_dep = *original_ins_dep;
    	pruning_instrs_before_spawn(ins_dep, current_thread->convert_to_super_block(), spawn_ins_pos);
    	spawning_distance = compute_spawning_distance(spawn_blocks, spawn_pos_instr);
    	if(spawning_distance < threshold::spawning_distance_lower){		// the spawn distance is too short, so this thread should not spawn.
    		spawn_ins_pos = NULL;
    		break;
    	}
    	if(ins_dep->count() < threshold::dependence_threshold){
    		opt_dep_count = ins_dep->count();
    		break;
    	}
    }

    delete original_ins_dep;
    delete ins_dep;

    return opt_dep_count;
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
		cur_thread->printSpawnPosition(std::cout);

		//3. Then we should found out the pslice segment.
		cur_thread->finish_construction();

		//4. After found out the spawn pos, pslice segment, then write the infomation to the cfg lowlevel representation.
		cur_thread->write_spawn_info();
	}

}

ThreadPartition::~ThreadPartition() {
	delete threadList;
}
