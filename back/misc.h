#ifndef ST_MISC_H
#define ST_MISC_H

#include <suif_copyright.h> 
#include <suif1.h>

void print_bit_man(operand_bit_manager *the_bit_mgr, FILE *fp = stdout);
float branch_taken_probability(cfg_node *cn);

tree_instr* 
search_latest_define_point(operand var_op, tree_instr *pos, cfg_block *curr_block, super_block *subgraph);

bit_set* 
search_latest_define_point(bit_set *definees, super_block *subgraph, bit_set *res);

tree_instr*
search_latest_def_point_before_instr(operand var_op, tree_instr *pos, cfg_block *curr_block, super_block *subgraph);

cfg_block*
find_block_contains_instr(super_block *subgraph, machine_instr *mi);

bit_set*
search_related_point(bit_set *definees, super_block *subgraph, bit_set *related);

extern void enroll_variables(tree_block *, operand_bit_manager *);


#endif
