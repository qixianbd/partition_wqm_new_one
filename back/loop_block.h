#ifndef LOOP_BLOCK_H
#define LOOP_BLOCK_H

#include "common.h"
#include "super_block.h"


extern FILE *stat_fp;
extern boolean statistics;

class da_cfg;

class loop_block : public super_block
{
private:
    cfg_node *loop_entry;           /*entry cfg node of loop super block*/
    cfg_node *loop_end;             /**/
    cfg_node_list *loop_exits;      /*cfg node list of loop super block*/   /*一个循环可能有很多个退出条件, loop_exit是该循环退出条件链表*/
    super_block *likely_path;       /*the likely path(super block) of loop super block*/

    tnle *spawned_pos;              /*spawn position of loop block*/
    cfg_block *spawned_block;       /*the cfg block which spawn position is in*/
    tnle *cqip_pos;                 /**/
    cfg_block *cqip_block;          /**/
    tree_node_list *pslice;         /*pre-compute slice for loop*/
    label_sym *cqip_pos_num;        /*control quasi-independent point label*/
    cfg_node *succ_node;            /*loop region's successor node*/
    super_block *find_most_likely_path();

public:
    loop_block();
    ~loop_block();
    void set_entry_node(cfg_node *entry) {this->loop_entry = entry;}    /*set entry node of loop super block*/
    void set_end_node(cfg_node *end) {this->loop_end = end;}
    void add_exit_node(cfg_node *exitnode) {loop_exits->append(exitnode);}
    cfg_node* entry_node() {return loop_entry;}
    cfg_node* end_node() {return loop_end;}
    cfg_node_list* exit_nodes() {return loop_exits;}
    //
    void set_cqip_pos(tnle *pos) {cqip_pos = pos;}
    tnle* get_cqip_pos() {return cqip_pos;}
    void set_spawned_pos(tnle *pos) {spawned_pos = pos;}
    tnle* get_spawned_pos() {return spawned_pos;}
    void set_cqip_block(cfg_block *block) {cqip_block = block;}
    cfg_block* get_cqip_block() {return cqip_block;}
    void set_spawned_block(cfg_block *block) {spawned_block = block;}
    cfg_block* get_spawned_block() {return spawned_block;}

    tree_node_list* get_pslice() {return pslice;}
    bool is_loop_exit(cfg_node *);
    bool has_inner_loop();
    cfg_node* find_succ_node(da_cfg* the_dacfg);
    super_block* most_likely_path();
    void set_spawn_info(tnle* spawn_pos, cfg_block* spawn_block,
                        tree_node_list* pslice, label_sym* cqip_pos_num);
    void write_spawn_info();
};

#endif
