#include "super_block_cfg.h"
/*
 *super_block_cfg::super_block_cfg() --- constructor of super block cfg
 */
super_block_cfg::super_block_cfg()
{
    sb_list = new super_block_list;
}

/*
 *super_block_cfg::append() --- append the super block block to the super block list
 */
void super_block_cfg::append(super_block *block)
{
    sb_list->append(block);
}

/*
 *super_block_cfg::in_which_super_block() --- find cfg_node(node) in which super block.
 */
super_block* super_block_cfg::in_which_super_block(cfg_node *node)
{
    assert(node != 0);
    super_block_list_iter iter(sb_list);
    while(!iter.is_empty())
    {
        super_block *sb = iter.step();
        if(sb->contains(node))
            return sb;
    }
    return 0;
}

/*
 *super_block_cfg::in_which_super_block() --- find tnle(pos) in which super block.
 */
super_block* super_block_cfg::in_which_super_block(tnle* pos)
{
    tree_instr *t_instr = (tree_instr *)pos->contents;
    machine_instr *mi = (machine_instr *)t_instr->instr();

    super_block_list_iter iter(sb_list);
    while(!iter.is_empty())
    {
        super_block *sblock = iter.step();
        if(sblock->contains(mi))
            return sblock;
    }
    assert(0);
    return 0;
}

/*
 *super_block_cfg::postdominates() --- determine super block candidate_pdom whether is postdominator of super block(block).
 */
bool super_block_cfg::postdominates(super_block *candidate_pdom, super_block *block)
{
    super_block *pdom = block->immed_pdom();
    while(pdom != 0)
    {
        if(pdom == candidate_pdom)
            return true;

        pdom = pdom->immed_pdom();
    }

    return false;
}

/*
 *super_block_cfg::print_relationship() --- print super block cfg.
 */
void super_block_cfg::print_relationship(FILE *fp)
{
    super_block_list_iter iter(sb_list);
    while(!iter.is_empty())
    {
        super_block *sb = iter.step();
        sb->print_relationship(fp);
    }
}
