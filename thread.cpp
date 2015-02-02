#include "thread.h"
#include "spmt_instr.h"
#include "user_options.h"
#include "super_block_cfg.h"
#include "procedure.h"
#include "thread_partition.h"
#include "threshold.h"
#include "misc.h"

extern boolean usexml;
extern int pslice_of_thread;


/*
 *thread::thread() --- constructor of thread.
 */
thread::thread() : s_count(0)
{
    spawned_pos = 0;
    spawned_block = 0;
    pslice = 0;
    cqip_pos_num = 0;
    cqip_pos = 0;
    cqip_block = 0;
}

/*
 *thread::~thread() --- destructor of thread.
 */
thread::~thread()
{
}

/*
 *thread::set_spawn_count() --- set the spawn count
 */
void thread::set_spawn_count(int n)
{
    this->s_count = n;
}

/*
 *thread::spawn_count() --- return spawn count 
 */
int thread::spawn_count()
{
    return this->s_count;
}

/*
 *thread::inc_spawn_count() --- increase spawn count by one.
 */
void thread::inc_spawn_count()
{
    this->s_count++;
}

/*
 *thread::set_spawn_info() --- set spawn information.
 */
void thread::set_spawn_info(cfg_block *spawn_block, tree_node_list *pslice, label_sym *cqip_pos_num)
{
    this->spawned_block = spawn_block;
    this->pslice = pslice;
    this->cqip_pos_num = cqip_pos_num;
}

/*
 *thread::set_spawned_pos() --- set thread spawn position
 */
void thread::set_spawned_pos(tnle *spawn_pos)
{
    this->spawned_pos = spawn_pos;
}

/*
 *thread::get_spawned_pos() --- get thread spawn position获得线程的激发位置
 */
tnle* thread::get_spawned_pos()
{
    return spawned_pos;
}

/*
 *
 */
void thread::set_cqip_pos(tnle *cqip_pos)
{
    this->cqip_pos = cqip_pos;
}

/*
 *
 */
tnle* thread::get_cqip_pos()
{
    return cqip_pos;
}

/*
 *
 */
cfg_block* thread::get_spawned_block()
{
    return spawned_block;
}

/*
 *获取含有cqip点的块
 */
cfg_block* thread::get_cqip_block()
{
    return  cqip_block;
}

/*
 *thread::add_spawn_pos() --- add thread spawn position, to aim at multi-spawn
 */
void thread::add_spawn_pos(tnle *spawn_pos)
{
    spawn_poss.push_back(spawn_pos);
    ++s_count;
}

/*
 *thread::reach_any_spawn_pos() --- If tnle(spawn position) 
 *thread::reach_any_spawn_pos() 判断spawn_pos 指向的节点是否真的指向该线程的一个spawn_pos. 是返回true, 不是返回false.
 */
bool thread::reach_any_spawn_pos(tnle * spawn_pos)
{
    std::vector<tnle *>::iterator iter;
    for(iter = spawn_poss.begin(); iter != spawn_poss.end(); iter++)
    {
        if(spawn_pos == *iter)
        {
            return true;
        }
    }
    return false;
}

/*
 *thread::write_spawn_info() --- write spawn information for thread, such as: pre-compute slice, and spawn information
 线程激发写信息例如：预计算片段和激发点信息*/
void thread::write_spawn_info()
{
	UserOptions* options = UserOptions::getUserOptions();
//    if(spawned_pos == 0)
//        return;
//    spawned_block->insert_after(pslice, spawned_pos);
    //
//    spawned_block->insert_after(pslice, cqip_pos);
//    insert_spawn_instr(spawned_block, spawned_pos, cqip_pos_num);
    if(spawned_pos == 0 || cqip_pos == 0)//sp或是cqip中有一个为空就返回
        return;
        //assert_msg(FALSE, ("cqip point is null"));
//    if(((instruction *)(((tree_instr *)spawned_pos->contents)->instr()))->opcode() == (int)mo_cqip)
//        return;
    if(options->getStatistics())
        fprintf(options->getStatisticFilePtr(), "pslice size: \t%d\t\t", pslice->count());



    printf("pslice:\n");
    tree_node_list_iter iter(pslice);
    while(!iter.is_empty())
    {
        tree_node *tn = iter.step();
        ((instruction *)((tree_instr *)tn)->instr())->print();
    }
    printf("\n");

    cqip_block->insert_after(pslice, cqip_pos->next());

    insert_spawn_instr(spawned_block, spawned_pos, cqip_pos_num);
    
    printf("cqip:\n");
    ((instruction *)((tree_instr *)(this->cqip_pos)->contents)->instr())->print();
    printf("\n");

    printf("spawn:\n");
    ((instruction *)((tree_instr *)(this->spawned_pos)->contents)->instr())->print();
    printf("\n");
    
    printf("label:\n");
    cqip_pos_num->print(stdout);
    printf("\n");
}


////////////////////////////addbykeyming////////////////////
////////////////////////////////////////////////////////////////
thread* thread::create_new_thread(super_block* first_block){
    thread *t = new thread();
    //in 3 month 6 day
    if (first_block->knd() == super_block::LOOP)
    	first_block = first_block->immed_pdom();
    //
    t->add_super_block(first_block);
    return t;
}
super_block *thread::find_pslice_path(super_block * spawn_sblock,super_block * cqip_sblock) {
	super_block *pslice_path = new super_block(super_block::BLOCK_LIST);
	super_block *sblock = spawn_sblock;

	super_block_list *the_path = this->super_blocks();
	this->print(stdout);
	super_block_list_iter it(the_path);
	bool inPath = false;
	while(!it.is_empty()){
		super_block* sblock = it.step();
		if(sblock == spawn_sblock){
			inPath = true;
		}
		if (sblock->knd() == super_block::BLOCK){
			if(inPath){
				pslice_path->add_blocks(sblock->nodes());
			}
		}
		else if (sblock->knd() == super_block::LOOP) {			//如果超级块的类型为循环，什么都不做
			;
		} else {
			assert(0);
		}
	}

	return pslice_path;
}

void thread::finish_construction(thread* future_thread){
	assert(future_thread != NULL);
    tnle *spawn_pos = this->get_spawned_pos();
    if (spawn_pos == 0){
    	return;
    }

    /**
     * 1. get the cqip position for this thread.  Insert the cqip instruction and the cqip lable.
     */
    super_block *cqip_sblock = future_thread->first_super_block();
    cqip_block = NULL, cqip_pos = NULL;
    if (cqip_sblock->knd() == super_block::BLOCK){
    	cqip_block = (cfg_block *) cqip_sblock->first_block();
    	cqip_pos = insert_cqip_instr(cqip_block, false);
    }
    else if (cqip_sblock->knd() == super_block::LOOP){
    	assert(0);		// if is Loop , then we do what?  we need do something special.
    }

    cqip_pos_num = peek_cqip_pos(cqip_pos);
    printf("\n cqip_pos_num label is:\n");
    cqip_pos_num->print(stdout);
    printf("\n");

    /**
     * 2. get the spawn position for this thread.
     */

	super_block_cfg* the_scfg = Procedure::getCurrentProcedure()->getTheScfg();
	super_block *spawn_sblock = the_scfg->in_which_super_block(this->spawned_pos);
	spawned_block = (cfg_block *) spawn_sblock->first_block();

	/**
	 * 3. find the pslice segment , and insert the pslice segment instruction sets.
	 */
	super_block *pslice_path = this->find_pslice_path(spawn_sblock, cqip_sblock);

}

void thread::setSpawnBlock(tnle* spawn_pos){
	assert(spawn_pos != NULL);
	super_block_cfg* the_scfg = Procedure::getCurrentProcedure()->getTheScfg();
	super_block *the_spawn_super_block = the_scfg->in_which_super_block(spawn_pos);
	this->spawned_block = (cfg_block*)the_spawn_super_block->first_block();
}

void thread::printSpawnPosition(std::ostream &os)const{
	super_block_cfg* the_scfg = Procedure::getCurrentProcedure()->getTheScfg();
	super_block *the_spawn_super_block = the_scfg->in_which_super_block(this->spawned_pos);

    tree_instr *first_instr = (tree_instr *)spawned_pos->contents;
    machine_instr *first_mi = (machine_instr *)first_instr->instr();


	os << "The spawn is in the super block " << the_spawn_super_block->block_num() << "\n";
	os << "The corresponding instruction is " << ":";
	first_mi->print(stdout);
}

void thread::printSuperBlocks(std::ostream &os)const{
	os << "All the super blocks in this thread is :\n" ;
	super_block_list_iter iter(this->super_blocks());
	while(!iter.is_empty()){
		super_block *block = iter.step();
		os << block->block_num() << "\t" ;
	}
	os << "\n";
}


