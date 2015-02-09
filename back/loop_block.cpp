#include "loop_block.h"
#include "spmt_instr.h"
#include "misc.h"
#include "user_options.h"

extern boolean usexml;
extern int pslice_of_loop;
/*
 *loop_block::loop_block() --- construct of loop super block.
 */
loop_block::loop_block():super_block(super_block::LOOP)
{
    loop_exits = new cfg_node_list;
    likely_path = 0;
    succ_node = 0;
}

/*
 *loop_block::~loop_block() --- destructor of loop block
 */
loop_block::~loop_block()
{
    delete loop_exits;
    if(likely_path != 0)
        delete likely_path;
    //1.10
    if(succ_node != 0)
        delete succ_node;
}

/*
 *loop_block::is_loop_exit() --- determine cfg node whether is loop exit node.

 */
bool loop_block::is_loop_exit(cfg_node *node)
{
    cfg_node_list_iter iter(loop_exits);
    while(!iter.is_empty())//is_empty()用来测试一个循环的退出条件
    {
        cfg_node *exit_node = iter.step();
        if(exit_node == node)
            return true;
    }
    return false;
}

/*
 *--keyming--判断该循环是否有内层循环.
 */
bool loop_block::has_inner_loop()
{
	return false;
}

/*
 *loop_block::most_likely_path() --- find the most likely path of the loop super block.
 */
super_block* loop_block::most_likely_path()
{
    if(likely_path == 0)
        likely_path = find_most_likely_path();
    return likely_path;
}

/*
 *loop_block::find_most_likely_path() --- find the most likely path in loop region
 找循环区域的最可能路径
 */
super_block* loop_block::find_most_likely_path()
{
    super_block *path = new super_block(super_block::BLOCK_LIST);
    cfg_node *node = this->loop_entry;//this指的是一个loop_block对象
    //如果loop_block中的最可能的基本块包含进path并且没有再次到达loop_entry块
    do{
        path->add_block(node);
        if(branch_taken_probability(node) < 0.5)
            node = node->fall_succ();
        else
            node = node->take_succ();
    }while(node != loop_entry && this->contains(node));

    return path;
}

/*
 *loop_block::find_succ_node() --- find succ_node of loop region
找循环区域的后继节点
 */
cfg_node* loop_block::find_succ_node(da_cfg *the_cfg)
{
    if(succ_node != 0)
        return succ_node;

    cfg_node *succ = 0;
    cfg_node_list_iter iter(loop_exits);
    while(!iter.is_empty())
    {
        cfg_node *exit_node = iter.step();
        cfg_node_list_iter succ_iter(exit_node->succs());
        while(!succ_iter.is_empty())
        {
            cfg_node *succ_node = succ_iter.step();
            if(!this->contains(succ_node))
            {
                if(succ == 0)
                {
                    succ = succ_node;
                    continue;
                }
               /* else
                {
                    //assert(succ == succ_node);
                    return NULL;
                }*/
            }
        }
    }
    succ_node = succ;
    return succ_node;
}

/*
 *loop_block::set_spawn_info() --- set spawn information, including spawn position, spawn block, pre-compute slice and cqip position label.
 */
void loop_block::set_spawn_info(tnle* spawn_pos, cfg_block* spawn_block,
                                tree_node_list* pslice, label_sym* cqip_pos_num/*, tnle* cqip_pos*/)
{
    this->spawned_pos = spawn_pos;
    this->spawned_block = spawn_block;
    this->pslice = pslice;
    this->cqip_pos_num = cqip_pos_num;
    //
//    this->cqip_pos = cqip_pos;
}

/*
 *loop_block::write_spawn_info() --- write spawn information, including pre-compute slice, spawn instruction and cancel instruction.
 */
void loop_block::write_spawn_info()
{
//    spawned_block->insert_after(pslice, spawned_pos);
    //
	UserOptions* options = UserOptions::getUserOptions();

    if( spawned_pos == 0 || cqip_pos == 0)
        assert_msg(FALSE, ("loop partition cqip position is null"));
    //if(cqip_pos->next())
    if(options->getStatistics())
        fprintf(options->getStatisticFilePtr(), "pslice size: \t%d\t\t", pslice->count());


    printf("loop pslice:\n");
    tree_node_list_iter iter(pslice);
    while(!iter.is_empty())
    {
        tree_node *tn = iter.step();
        ((instruction *)((tree_instr *)tn)->instr())->print();
    }
    printf("\n");

    cqip_block->insert_after(pslice, cqip_pos->next());
    //else
    //    assert_msg(FALSE,("loop partition doesn't insert pslice"));
    insert_spawn_instr(spawned_block, spawned_pos, cqip_pos_num);
    printf("loop cqip:\n");
    ((instruction *)((tree_instr *)(this->cqip_pos)->contents)->instr())->print();
    printf("\n");

    printf("loop spawn:\n");
    ((instruction *)((tree_instr *)(this->spawned_pos)->contents)->instr())->print();
    printf("\n");

    printf("loop label:\n");
    cqip_pos_num->print(stdout);
    printf("\n");   
    printf("loop_block:\n");
     this->print(stdout);
     printf("\n");
     printf("loop likely_path:\n");
     this->likely_path->print(stdout);
     printf("\n");
     printf("loop_exits:\n");
     cfg_node_list_iter iter1(loop_exits);
         while(!iter1.is_empty())
         {
             cfg_node *exit_node = iter1.step();
             exit_node->print(stdout);
             printf("+++++");
             cfg_node_list_iter succ_iter(exit_node->succs());
             while(!succ_iter.is_empty())
                   {
                       cfg_node *succ_node = succ_iter.step();
                       succ_node->print(stdout);
                        printf("-----");
                   }
             printf("\n");
         }
         printf("\n");
         printf("loop_succ");
         this->succ_node->print(stdout);
         printf("\n");
         printf("loop_entry:");
         this->loop_entry->print(stdout);
         printf("\n");
         printf("loop_end:");
         this->loop_end->print(stdout);
         printf("\n");

    //for loop, don't insert squash instruction
    //insert_cancel_instr(succ_node, cqip_pos_num);
}
