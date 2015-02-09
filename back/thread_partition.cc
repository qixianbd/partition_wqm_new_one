/*
 * ThreadPartition.cc
 *
 *  Created on: 2015年1月6日
 *      Author: keyming
 */

#include <limits.h>
#include <list>
#include "thread_partition.h"
#include "super_block.h"
#include "thread.h"
#include "threshold.h"
#include "procedure_path.h"
#include "procedure.h"
#include "misc.h"
#include "spmt_instr.h"

/**
 * static function set
 */
static unsigned int find_min_dependence(thread* currentThread, thread* futureThread, tnle* &spawn_ins_pos);
tree_node_list *construct_pslice(bit_set * ins_dep, label_sym * cqip_pos, tree_node_list * pslice);

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

void ThreadPartition::findPermittedSpawnRange(super_block*& begin, super_block*& end){

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

void ThreadPartition::finish_construction(thread* current_thread, thread* future_thread){
	assert(current_thread != NULL);
	assert(future_thread != NULL);
    Procedure *proc = Procedure::getCurrentProcedure();
    da_cfg *the_cfg = proc->getTheCfg();
    reaching_def_problem *the_reach = proc->getTheReach();
    operand_bit_manager *the_bit_mgr  = proc->getTheBitMgr();


	    tnle *spawn_pos = current_thread->get_spawned_pos();
	    if (spawn_pos == 0){
	    	return;
	    }

	    /**
	     * 1. get the cqip position for this thread.  Insert the cqip instruction and the cqip lable.
	     */
	    super_block *cqip_sblock = future_thread->first_super_block();
	    cfg_block* cqip_block = NULL, *spawned_block = NULL;
	    label_sym *cqip_pos_num = NULL;
	    tnle* spawned_pos = NULL,  *cqip_pos = NULL;
	    if (cqip_sblock->knd() == super_block::BLOCK){
	    	cqip_block = (cfg_block *) cqip_sblock->first_block();
	    	cqip_pos = insert_cqip_instr(cqip_block, false);
	    }
	    else if (cqip_sblock->knd() == super_block::LOOP){
	    	//assert(0);		// if is Loop , then we do what?  we need do something special.
	    	cqip_block = (cfg_block *) cqip_sblock->first_block();
	    		    	cqip_pos = insert_cqip_instr(cqip_block, false);
	    }

	    cqip_pos_num = peek_cqip_pos(cqip_pos);
	    printf("\n cqip_pos_num label is:\n");
	    cqip_pos_num->print(stdout);
	    printf("\n");

	    /**
	     * 2. get the spawn position for this thread.
	     */

		super_block_cfg* the_scfg = Procedure::getCurrentProcedure()->getTheScfg();
		super_block *spawn_sblock = the_scfg->in_which_super_block(current_thread->get_spawned_pos());
		spawned_block = (cfg_block *) spawn_sblock->first_block();
		current_thread->set_cqip_block(cqip_block);
		current_thread->set_cqip_pos(cqip_pos);
		current_thread->set_spawned_block(spawned_block);


		/**
		 * 3. find the pslice segment , and insert the pslice segment instruction sets.
		 */
		super_block *pslice_path = current_thread->find_pslice_path(spawn_sblock, cqip_sblock);
	    bit_set liveins;



	    the_cfg->find_liveins(current_thread->convert_to_super_block(), the_bit_mgr, &liveins);
	    bit_set *ins_dep = new bit_set(0, the_reach->catalog()->num_defs());
	    search_pslice_instrs(&liveins, pslice_path, current_thread->get_spawned_pos(), ins_dep);

	    tree_node_list *pslice = new tree_node_list;
	    construct_pslice(ins_dep, cqip_pos_num, pslice);


	    //
		current_thread->set_cqip_pos(cqip_pos);
		current_thread->set_cqip_block(cqip_block);

	    //3month 8days
	  //  insert_spawn_instr(spawned_block, spawn_pos, cqip_pos_num);
		current_thread->set_spawn_info(spawned_block, pslice, cqip_pos_num);
		return ;
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
		fprintf(stdout, "The optional dependences count is : %u\n", opt_dep_count);
		cur_thread->printSpawnPosition(std::cout);

		//3. Then we should found out the pslice segment.
		finish_construction(cur_thread, future_thread);

		//4. After found out the spawn pos, pslice segment, then write the infomation to the cfg lowlevel representation.
#define PRINT_DEBUG
#ifdef PRINT_DEBUG
			/**
			 * The following code are mainly debug information.
			 */
			std::cout << "This path can be partitioned like the following:***********" << std::endl << procPath->getThreadList()->size() << " Threads" << std::endl;
			procPath->printThreadBlock(std::cout);
			char *procName = Procedure::getCurrentProcedure()->getCurPsym()->name();
			if(strcmp(procName, "body_alloc") == 0){
				cur_thread->printSuperBlocks(std::cout);
			}
			cur_thread->printSuperBlocks(std::cout);
#endif
		cur_thread->write_spawn_info();
	}

}

ThreadPartition::~ThreadPartition() {
	delete threadList;
}

/*
 *pruning_cal_instrs() --- prune call instruction from defs, and delete the related instruction of the call instruction from
 *                        the defs.裁剪在定义集中的call指令，删除和call指令有关的指令
 */
void ThreadPartition::pruning_cal_instrs(bit_set * defs, super_block * spawn_path)
{
    Procedure *proc = Procedure::getCurrentProcedure();
    da_cfg *the_cfg = proc->getTheCfg();
    reaching_def_problem *the_reach = proc->getTheReach();
    operand_bit_manager *the_bit_mgr  = proc->getTheBitMgr();

    std::list < machine_instr * >instr_list;
    bit_set_iter iter(defs);
    //delete call instruction from defs
    while (!iter.is_empty()) {
	int n = iter.step();
	machine_instr *mi =
	    (machine_instr *) the_reach->catalog()->lookup(n);

	if ((int) mi->opcode() == mo_la)	//If the machine instruction is call包含这个定义点的是一条call指令
	{
	    if (mi->src_op(0).is_instr())	//如果原操作数是一条指令
	    {
		instruction *ins = mi->src_op(0).instr();	//将原操作数的指令用basesuif的指令类表示
		if (ins->opcode() == io_ldc)	//如果这是一个读常量的指令
		{
		    immed val = ((in_ldc *) ins)->value();	//读取ldc指令的常量值；立即数只能是整形，浮点和变量
		    if (val.is_symbol())	//如果这个立即数是一个变量符号
		    {
			sym_node *sn = val.symbol();
			if (sn->is_proc())	//如果这个符号节点是过程节点
			{
			    instr_list.push_back(mi);	//将这条调用指令写入instr_list中
			    defs->remove(n);	//将n这个call指令中的定义点置0
			}
		    }
		}
	    }
	}

	if ((int) mi->opcode() == mo_jalr /*|| (int)mi->opcode() == mo_jr */ )	//如果是跳转链接指令
	{
	    instr_list.push_back(mi);
	    defs->remove(n);
	}
    }

    //delete the related instuction of the call instruction from the defs
    while (!instr_list.empty()) {
	machine_instr *mi_instr = instr_list.front();	//返回list中第一个元素的引用
	instr_list.pop_front();	//移除第一个元素

	bit_set_iter iter(defs);
	while (!iter.is_empty()) {
	    int i = iter.step();
	    machine_instr *mi =
		(machine_instr *) the_reach->catalog()->lookup(i);
	    cfg_block *cb = find_block_contains_instr(spawn_path, mi);	//mi指令包含在激发路径中的那个块中
	    for (int i = 0; i < mi->num_srcs(); i++) {
		operand opd = mi->src_op(i);
		if (opd.is_symbol() || opd.is_reg()) {
		    tree_instr *t_ins =
			search_latest_def_point_before_instr(opd,
							     mi->parent(),
							     cb,
							     spawn_path);
		    if (t_ins == 0)
			continue;

		    machine_instr *def_instr =
			(machine_instr *) t_ins->instr();
		    if (def_instr == mi_instr) {
			defs->remove(i);
			instr_list.push_back(mi);
			continue;
		    }
		}
	    }
	}
    }
}

/*
 *search_pslice_instrs() --- find the pre-compute slice instruction, contains from spawn point to control quasi-independent point,
 *                          prune the instruction before spawn point and the call instruction contained in defs
 找pslice指令，包括从sp点到cqip点之间的指令，裁剪sp点之前的指令并且包含在定义集合中的call指令

 */
 bit_set *ThreadPartition::search_pslice_instrs(bit_set * liveins, super_block * spawn_path, tnle * spawn_pos, bit_set * defs)
{
    Procedure *proc = Procedure::getCurrentProcedure();
    da_cfg *the_cfg = proc->getTheCfg();
    reaching_def_problem *the_reach = proc->getTheReach();
    operand_bit_manager *the_bit_mgr  = proc->getTheBitMgr();

    bit_set *res = new bit_set(0, the_reach->catalog()->num_defs());
    bit_set *prev_res = new bit_set(0, the_reach->catalog()->num_defs());

    printf("\nspawn_path超级块\n");
    spawn_path->print();
    spawn_path->print_relationship();
    printf("超级块结束\n");

    search_latest_define_point(liveins, spawn_path, res);	//查找最近定义点
    printf("liveins最近定义点：");
    res->print(stdout);
    printf("\n");

    while (!res->is_empty()) {
	*defs += *res;
	*prev_res = *res;
	res->clear();
	bit_set_iter iter(prev_res);	//构造prev_res的迭代器
	while (!iter.is_empty()) {
	    int n = iter.step();
	    machine_instr *mi = (machine_instr *) the_reach->catalog()->lookup(n);	//查找对应机器指令
	    //指令为mo_la
	    if ((int) mi->opcode() == mo_la) {
		if (mi->src_op(0).is_instr()) {
		    instruction *ins = mi->src_op(0).instr();
		    if (ins->opcode() == io_ldc) {
			immed val = ((in_ldc *) ins)->value();
			if (val.is_symbol()) {
			    sym_node *sn = val.symbol();
			    if (sn->is_proc())
				continue;
			}
		    }
		}
	    }
	    cfg_block *cb = find_block_contains_instr(spawn_path, mi);	//查找包含mi指令的控制块

	    printf("\n包含");
	    mi->print();
	    printf("的控制块\n");
	    cb->print_with_instrs();
	    printf("控制块结束\n");

	    if (cb == 0) {
		mi->print();
		cfg_block *cb = find_block_contains_instr(spawn_path, mi);
	    }

	    for (int i = 0; i < mi->num_srcs(); i++) {
		operand opd = mi->src_op(i);	//mi指令第i个源操作数
		printf("\nmachineinstruciton:");
		mi->print(stdout);
		//操作数为符号或寄存器
		if (opd.is_symbol() || opd.is_reg() /* || opd.is_virtual_reg() || opd.is_hard_reg() || opd.is_expr() || opd.is_instr() */ )	///
		{

		    printf("符号或寄存器操作数");
		    opd.print();
		    printf("\n");
//int temp;
//scanf("%d\n",&temp);
		    tree_instr *t_ins = search_latest_def_point_before_instr(opd, mi->parent(), cb, spawn_path);	//查找指定超级块之前最近的定义
		    //定义存在
		    if (t_ins != 0) {
			int pos =
			    the_reach->catalog()->
			    first_id((machine_instr *) t_ins->instr());
			res->add(pos);
		    }
		}

		if (Is_ea_operand(opd)) {
		    printf("此操作数为有效地址计算！");
		    instruction *in = opd.instr();
		    in->print(stdout);
		    if (in->opcode() == io_add) {
			for (unsigned k = 0; k < in->num_srcs(); k++) {
			    operand temp12 = in->src_op(k);

			    if (temp12.is_hard_reg()) {
				temp12.print(stdout);
				// printf("hard register\n");
				// printf("%s\n",target_regs->name(temp12.reg()));
				tree_instr *t_ins1 =
				    search_latest_def_point_before_instr
				    (temp12, mi->parent(), cb, spawn_path);
				if (t_ins1 != 0) {
				    int pos =
					the_reach->catalog()->
					first_id((machine_instr *) t_ins1->
						 instr());
				    res->add(pos);
				}


			    }

			}
		    }
		    //int temp;
		    //scanf("%d\n",&temp);
		}
		if (opd.is_immed()) {
		    printf("此操作数为立即数！");
		}
		//操作数是指令
		if (opd.is_instr()) {
		    printf("\n操作数是指令:");
		    opd.print();
		}
		//操作数是表达式
		if (opd.is_expr()) {
		    printf("\n操作数是表达式");
		    opd.print();

		}
	    }
	}
    }
    printf("\n");
    printf("裁剪之前依赖变量：");
    defs->print(stdout);
    printf("\n");
    print_bitset_with_instr(the_reach, defs);
    pruning_instrs_before_spawn(defs, spawn_path, spawn_pos);	//截取线程激发点之前的指令
    printf("裁剪之后依赖变量：");
    defs->print(stdout);
    printf("\n");
    print_bitset_with_instr(the_reach, defs);
    pruning_cal_instrs(defs, spawn_path);	//
    printf("裁剪call指令之后依赖变量：");
    defs->print(stdout);
    printf("\n");
    print_bitset_with_instr(the_reach, defs);
    return defs;
}

void ThreadPartition::print_bitset_with_instr(reaching_def_problem * r, bit_set * bt)
{
    bit_set_iter iter(bt);
    printf("活跃变量所在指令：\n");
    while (!iter.is_empty()) {
	int n = iter.step();
	printf("#num %d\n", n);
	((machine_instr *) r->catalog()->lookup(n))->print(stdout);
	//printf("+++");
    }
    printf("\n");
}


/*
 *construct_pslice() --- construct pre-compute slice.
 */
tree_node_list *construct_pslice(bit_set * ins_dep, label_sym * cqip_pos,
				 tree_node_list * pslice)
{
    Procedure *proc = Procedure::getCurrentProcedure();
    da_cfg *the_cfg = proc->getTheCfg();
    reaching_def_problem *the_reach = proc->getTheReach();
    operand_bit_manager *the_bit_mgr  = proc->getTheBitMgr();

    //generate the entry of the pre-compute slice
    immed_list *entry_iml = new immed_list;	//immed为立即数，这里构造一个立即数链
    entry_iml->append((immed) cqip_pos);	//将cqip_pos追加到立即数链
    machine_instr *pslice_entry_instr = new mi_bj(mo_pslice_entry, cqip_pos);	//构造入口的机器指令
    pslice_entry_instr->set_annote(k_pslice_entry_pos, entry_iml);	//为立即数链添加注解
    printf("cqip_pos:");
    cqip_pos->print(stdout);
    printf("\n");
    printf("ins_dep:");
    ins_dep->print(stdout);
    printf("\n");

    bit_set_iter iter1(ins_dep);
    while (!iter1.is_empty()) {
	int n = iter1.step();
	printf("liveins");
	printf("%d", n);
	printf("exist in instruction：");
	((machine_instr *) the_reach->catalog()->lookup(n))->print(stdout);
	printf("+++");
    }
    printf("\n");
    printf("pslice_entry_instr:");
    pslice_entry_instr->print(stdout);
    printf("\n");
    tree_instr *entry_instr = new tree_instr(pslice_entry_instr);	//构造suif指令（机器无关指令）

/*printf("pslice_entry_instr_tree_instr:");
entry_instr->print(stdout);
printf("\n");
printf("pslice_entry_instr_tree_instr_instr:");
entry_instr->instr()->print(stdout);
printf("\n");
*/
    pslice->append(entry_instr);	//将entry_instr追加到pslice



    //according to the bit_set of ins_dep, construct the pre-compute slice
    bit_set_iter iter(ins_dep);	//构造ins_dep的迭代器

    while (!iter.is_empty()) {
	int n = iter.step();
	if (ins_dep->contains(n)) {
	    machine_instr *mi = (machine_instr *) the_reach->catalog()->lookup(n);	//the_reach
	    if (mi !=
		(machine_instr *) the_reach->catalog()->lookup(n - 1)) {
//printf("instr:");
//the_reach->catalog()->lookup(n)->print(stdout);
//printf("\n");
		printf("machine_instr:");
		mi->print();
		printf("\n");

		//指令是mo_lab指令什么都不做
		if ((int) mi->opcode() == mo_lab) {
		    //do noting
		}
		//mif_xx类型的指令伪操作指令什么都不做
		else if (((int) mi->opcode() >= mo_null
			  && (int) mi->opcode() <= mo_half)
			 || (int) mi->opcode() == mo_file
			 || (int) mi->opcode() == mo_endr) {
		    //do noting
		}
		//modified in 3.20  = mo_la
		//mif_rr类型指令
		else if (((int) mi->opcode() >= mo_rol
			  && (int) mi->opcode() <= mo_sne)
			 || ((int) mi->opcode() >= mo_la
			     && (int) mi->opcode() <= mo_movt)
			 || ((int) mi->opcode() >= mo_nop
			     && (int) mi->opcode() <= mo_li_s)
			 || (int) mi->opcode() == mo_fst
			 || (int) mi->opcode() == mo_ust) {
		    //modified in 3.20

		    if ((int) mi->opcode() == mo_la)	//call指令
		    {
			if (mi->src_op(0).is_reg() && (int) mi->src_op(0).reg() == 29)	//如果指令的第一个操作数是寄存器且所用寄存器为29即栈指针
			    continue;

		    }
//printf("\n当前---===>\n");
//mi->print();

		    //modified in 3.20
		    machine_instr *mi_if_rr = new mi_rr();
		    base_symtab *dscope = mi->parent()->scope();
		    replacements r;
		    mi->find_exposed_refs(dscope, &r);
		    r.resolve_exposed_refs(dscope);
		    mi_if_rr = (machine_instr *) mi->clone_helper(&r);
		    tree_instr *ti = new tree_instr(mi_if_rr);

		    printf("通用指令(machine_instr)：");
		    mi_if_rr->print();
		    printf("\n");
//printf("通用指令(instr)：");
//ti->instr()->print(stdout);
//printf("\n");
//printf("通用指令（tree_instr）:");
//ti->print(stdout);
//printf("\n");

		    pslice->append(ti);

		}
		//mif_bj类型指令 分支跳转
		else if (((int) mi->opcode() >= mo_b
			  && (int) mi->opcode() <= mo_bnez)
			 || ((int) mi->opcode() >= mo_beq
			     && (int) mi->opcode() <= mo_jr)
			 || (int) mi->opcode() == mo_bc1f
			 || (int) mi->opcode() == mo_bc1t) {

		    machine_instr *mi_if_bj = new mi_bj();
		    base_symtab *dscope =
			((mi_bj *) mi)->parent()->scope();
		    replacements r;
		    mi->find_exposed_refs(dscope, &r);
		    r.resolve_exposed_refs(dscope);
		    mi_if_bj = (machine_instr *) mi->clone_helper(&r);
		    tree_instr *ti = new tree_instr(mi_if_bj);

		    printf("跳转指令_machine_instruction:");
		    mi_if_bj->print();
		    printf("\n");
//printf("跳转指令(instr)：");
//ti->instr()->print(stdout);
//printf("\n");
//printf("跳转指令（tree_instr）:");
//ti->print(stdout);
//printf("\n");

		    pslice->append(ti);

		}

	    }
	}
    }

    //generate the exit of the pre-compute slice
    immed_list *exit_iml = new immed_list;
    exit_iml->append(immed(cqip_pos));
    machine_instr *pslice_exit_instr = new mi_bj(mo_pslice_exit, cqip_pos);
    pslice_exit_instr->set_annote(k_pslice_exit_pos, entry_iml);
    tree_instr *exit_instr = new tree_instr(pslice_exit_instr);

    printf("（machine_instr）pslice退出：");
    pslice_exit_instr->print();
    printf("\n");
/*printf("（instr）pslice退出：");
exit_instr->instr()->print(stdout);
printf("\n");
printf("（tree_instr）pslice退出：");
exit_instr->print(stdout);
printf("\n");
*/
    pslice->append(exit_instr);

    printf("in construct pslice\n");
    return pslice;


}
void ThreadPartition::fillPslice(super_block *pslice_path, thread* current_thread,  label_sym *cqip_pos_num){
    bit_set liveins;
    Procedure *proc = Procedure::getCurrentProcedure();
    da_cfg *the_cfg = proc->getTheCfg();
    reaching_def_problem *the_reach = proc->getTheReach();
    operand_bit_manager *the_bit_mgr  = proc->getTheBitMgr();


    the_cfg->find_liveins(current_thread->convert_to_super_block(), the_bit_mgr, &liveins);
    bit_set *ins_dep = new bit_set(0, the_reach->catalog()->num_defs());
    search_pslice_instrs(&liveins, pslice_path, current_thread->get_spawned_pos(), ins_dep);

    tree_node_list *pslice = new tree_node_list;
    construct_pslice(ins_dep, cqip_pos_num, pslice);

}

