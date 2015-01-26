#ifndef SUPER_BLOCK_CFG
#define SUPER_BLOCK_CFG

#include "common.h"
#include "super_block.h"

class super_block_cfg
{
private:
    super_block_list *sb_list;      /*super block list contains super block*/
    super_block *entry_block;       /*entry super block of super block list*/
    super_block *exit_block;        /*exit super block of super block list*/

public:
    super_block_cfg();
    void append(super_block *block);
    super_block* entry() {return entry_block;}
    super_block* exit() {return exit_block;}
    void set_entry(super_block *block) {this->entry_block = block;}
    void set_exit(super_block *block) {this->exit_block = block;}
    super_block_list* super_blocks() {return sb_list;}
    super_block* in_which_super_block(cfg_node *node);
    super_block* in_which_super_block(tnle* pos);

    bool postdominates(super_block* candidate_pdom, super_block* block);

    void print_relationship(FILE *fp = stdout);
};

#endif
