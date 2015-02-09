#ifndef ST_DA_CFG_H
#define ST_DA_CFG_H

#include <suif_copyright.h>
#include "common.h"
#include "super_block.h"
#include "loop_block.h"

extern void init_dfa(int &, char *[]);
extern void exit_dfa();

/*
 *class da_cfg
 *          control flow graph contains data analysis.
 */
class da_cfg : public cfg
{
private:
    live_var_problem_more *liveness_more;

public:

    da_cfg(tree_block *b,
            boolean build_blocks = TRUE,
            boolean break_at_call = FALSE,
            boolean keep_layout = FALSE);

    ~da_cfg();

    void find_live_vars_more(operand_bit_manager *);

    boolean live_in(cfg_node *n, int var_num)
    {return liveness_more->live_in(n, var_num);}

    bit_set* live_in_set(cfg_node *n)
    {return liveness_more->live_in_set(n);}

    boolean live_out(cfg_node *n, int var_num)
    {return liveness_more->live_out(n, var_num);}

    bit_set *live_out_set(cfg_node *n)
    {return liveness_more->live_out_set(n);}

    bit_set *all_def_set(cfg_node *cn)
    {return liveness_more->all_def_set(cn);}

    bit_set *use_set(cfg_node *cn)
    {return liveness_more->use_set(cn);}

    void local_info_update(cfg_node *cn)
    { liveness_more->local_info_update(cn);}

    boolean single_block_update(cfg_node *cn)
    {return liveness_more->single_block_update(cn);}

    void add_block_update(cfg_node *cn)
    { liveness_more->add_block_update(cn);}

    void subset_all_def(cfg_node_list *cnl, bit_set *alld)
    { liveness_more->subset_all_def(cnl, alld);}

    void subset_all_use(cfg_node_list *cnl, bit_set *allu)
    { liveness_more->subset_all_use(cnl, allu);}

    void subset_repeated_def(cfg_node_list *cnl, bit_set *rdef)
    { liveness_more->subset_repeated_def(cnl, rdef);}

    void subset_liveness_update(cfg_node_list *cnl)
    { liveness_more->subset_liveness_update(cnl);}

    //find super block sb's live-ins, conserve in the bit_set livein.
    void find_liveins(super_block *sb, operand_bit_manager *bit_man, bit_set *livein);

    void find_liveins_of_loop(loop_block *sb, operand_bit_manager *bit_man, bit_set *livein);

    //print control flow graph and data flow analysis.
    void print_cfg(FILE *fp = stdout);
    void print_dfa(FILE *fp = stdout);

    //generate dot file
    void generate_dot(FILE *fp = stdout);
};

#endif
