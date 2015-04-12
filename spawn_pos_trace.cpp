#include "spawn_pos_trace.h"
#include <iostream>

/*
 *spawn_pos_trace::spawn_pos_trace() --- construct of spawn position trace.
 激发位置路径的构造
 */
spawn_pos_trace::spawn_pos_trace() : super_block(BLOCK_LIST)
{
    related_cals = new std::vector<machine_instr *>();
}

spawn_pos_trace::~spawn_pos_trace()
{
    delete related_cals;
}

int spawn_pos_trace::related_cal_num()
{
    return related_cals->size();
}

std::vector<machine_instr *>* spawn_pos_trace::get_related_cals()
{
    return related_cals;
}

/*
 *spawn_pos_trace::analyze_related_cals() --- analyze the related define point, record the call instruction.
 */
void spawn_pos_trace::analyze_related_cals(reaching_def_problem *the_reach, bit_set *related)
{
    bit_set_iter iter(related);
    while(!iter.is_empty())
    {
        int n = iter.step();
        machine_instr *mi = (machine_instr *)the_reach->catalog()->lookup(n);
        // modified in 3.15
        /*
        if(/*((int)mi->opcode() == mo_jalr || (int)mi->opcode() == mo_jar)||(int)mi->opcode() == mo_la && this->contains(mi))
        {
            if(mi->src_op(0).is_instr())
            {
                instruction *ins = mi->src_op(0).instr();
                if(ins->opcode() == io_ldc)
                {
                    immed val = ((in_ldc *)ins)->value();
                    if(val.is_symbol())
                    {
                        sym_node *sn = val.symbol();
                        if(sn->is_proc())
                            related_cals->push_back(mi);
                    }
                }
            }
        }
        */
        //function call machine instruction
        std::cout << " 指令为" << mi->opcode() << std::endl;
        if( mips_is_call(mi) && this->contains(mi) )
        {
            related_cals->push_back(mi);
        }
    }
}

/*
 *spawn_pos_trace::construct_loop_spawn_pos_trace() --- construct loop super block's spawn position trace.
 */
void spawn_pos_trace::construct_loop_spawn_pos_trace(super_block* likely_path)
{
    cfg_node_list_iter iter(likely_path->nodes());

    while(!iter.is_empty())
    {
        cfg_node *node = iter.step();
        assert(node->is_block());
        cfg_block *block = (cfg_block *)node;
        this->add_block(block);

        // \brief : If the block doesn't ends in call, jump out while loop
        // spawn position trace of loop doesn't contain branch, spawn speculative thread before branch.
        if(!block->ends_in_call())
            break;
    }
}

/*
 *spawn_pos_trace::construct_spawn_pos_trace() --- constuct non-loop region's spawn position trace.
 */
void spawn_pos_trace::construct_spawn_pos_trace(super_block_cfg *scfg, thread *curr_thread, super_block *cqip_block)
{
    bool padding = false;
    super_block_list_iter iter(curr_thread->super_blocks());
    while(!iter.is_empty())
    {
        super_block *sblock = iter.step();
        if(!padding && scfg->postdominates(cqip_block, sblock))
        {
            padding = true;
        }

        if(padding)
        {
            switch(sblock->knd())
            {
                case super_block::BLOCK :
                    {
                        cfg_node *node = sblock->first_block();
                        if(node->is_block())
                            this->add_block(node);

                        break;
                    }
                case super_block::LOOP :
                    break;
                default:
                    assert(0);
                    
            }
        }
    }
}
