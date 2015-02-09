#include <string.h>
#include "common.h"
#include "super_block.h"
#include "user_options.h"
#include "procedure.h"
#include "misc.h"

/*
 *print_bit_man() --- print the bit manager.
 */
void print_bit_man(operand_bit_manager *the_bit_mgr, FILE *fp)
{
    int n = the_bit_mgr->num_bits();
    bit_set *bs = new bit_set(0, n-1);
    for(int i = 0; i < n; i++)
    {
        bs->clear();
        bs->add(i);
        bs->print(fp);
        the_bit_mgr->print_entries(bs, fp);
    }
}

/*
 *enroll_variables() --- enroll variable to the bit manager.
 */
void enroll_variables(tree_block *tb, operand_bit_manager *the_bit_mgr)
{
    assert(tb->is_block());
    tree_node_list_iter tnli(tb->body());
    while(!tnli.is_empty())
    {
        tree_node *tn = tnli.step();
        if(tn->is_instr())
        {
            tree_instr *ti = (tree_instr *)tn;
            the_bit_mgr->enroll(ti->instr());
        }
    }
}

/*
 *branch_taken_probability() --- compute branch taken probability计算分支跳转的概率
 */
float branch_taken_probability(cfg_node *cn)
{
    if(!cn->is_block())//如果cn不是基本块，则没有跳转概率
        return 0.0;

    float taken_prob = 0.0;
    cfg_block *cb = (cfg_block *)cn;
    if(cb->ends_in_cbr())
    {
        machine_instr *mi = (machine_instr *)cb->in_cti()->instr();
        immed_list *iml = (immed_list *)(mi->peek_annote(k_instr_profile));//控制跳转指令profile注释
        if(iml)
        {//
            int exec_sum = (*iml)[0].integer();
            int taken_sum = (*iml)[1].integer();
            taken_prob = (exec_sum != 0) ? (taken_sum / exec_sum) : 0.001;
        }
        else
            taken_prob = 0.001;
    }

    return taken_prob;
}

/*
 *search_latest_define_point() --- find the latest define point in current block before the position(tree_instr).
 *                               If not find in current block, then find the latest define point from subgraph.
 在这个tree_instr之前，在当前基本块中找定义点，如果在当前基本块中没有找到，则从超级块中找最近定义点
 */
tree_instr *search_latest_define_point(operand var_op, tree_instr *pos, cfg_block *curr_block, super_block *subgraph)
{
    tree_instr *target = NULL;

    int definee;
    Procedure *procedure = Procedure::getCurrentProcedure();
    reaching_def_problem *the_reach = procedure->getTheReach();

    ///*operand bit manager */
    if(procedure->getTheBitMgr()->lookup(var_op, &definee))//如果
    {
        cfg_node_instr_iter cnii(curr_block);
        //循环是在当前块中找到最近定义点指令
        while(!cnii.is_empty())
        {
            tree_instr *test = cnii.step();
            if(test == pos)//只是搜索pos位置之前的最近定义点，以后的不做处理
                break;
            else if(test->instr()->dst_op() == var_op)//寻找每个目的操作数为所寻操作数的指令
                target = test;
        }
        //如果在当前块中没有找到最近定义点，则在整个超级块中进行寻找
        if(target == NULL)
        {
            bit_set *all_dp = the_reach->def_points_for(definee);//所有的定义点
printf("va_op  definee and 所对应的定义点:");
printf("%d\n",definee);
all_dp->print(stdout);
printf("\n");

            bit_set *all_reach_in = the_reach->reaching_in_set(curr_block);//所有的到达进入集合
printf("reaching_in_set of curr_block:");
all_reach_in->print(stdout);
printf("\n");
            bit_set the_dp;
            the_dp = *all_dp;//将所有的定义点赋值给the_dp
            the_dp *= *all_reach_in;//然后与到达进入集合进行与运算
printf("the_dp:");
the_dp.print(stdout);
printf("\n");
            bit_set_iter bs_iter(&the_dp);
            while(!bs_iter.is_empty())
            {
                int n = bs_iter.step();
                tree_instr *test = the_reach->catalog()->lookup(n)->parent();
printf("包含va_op定义的指令：");
((machine_instr *)test->instr())->print(stdout);
printf("\n");
                cfg_node_list_iter cnli(subgraph->nodes());
                while(!cnli.is_empty())
                {
                    cfg_node *cn = cnli.step();
                    if(cn->is_block())
                    {
                        cfg_block *cb = (cfg_block *)cn;
                        if(cb->contains(test->list_e()))
                            target = test;
                    }
                }
            }
        }
    }
if(target){
printf("在最可能路径上包含va_op定义的指令：");
((machine_instr *)target->instr())->print(stdout);
printf("\n");
}
    return target;
}

/*
 *search_latest_define_point() --- find the definee's the latest define point from the likely path(subgraph).
 在最可能路径上寻找最近定义点
 */
bit_set *search_latest_define_point(bit_set *definees, super_block *subgraph, bit_set *res)
{
    Procedure *procedure = Procedure::getCurrentProcedure();
    reaching_def_problem *the_reach = procedure->getTheReach();

	printf("super_block=likely_path:");
	subgraph->print_relationship(stdout);
	printf("\n");
	printf("definees:");
	definees->print(stdout);
	printf("\n");
		 bit_set_iter def_iter(definees);
		while(!def_iter.is_empty())
		{
			int definee = def_iter.step();
	printf("definees=livein:");
	printf("%d",definee);
	printf("\n");
			bit_set the_dp;
			the_dp = *(the_reach->def_points_for(definee));
	printf("definee's def_points:");
	the_dp.print(stdout);
	printf("\n");
			bit_set_iter the_dp_iter(&the_dp);
			int pos = -1;
			while(!the_dp_iter.is_empty())
			{
				int n = the_dp_iter.step();
				tnle *test = the_reach->catalog()->lookup(n)->parent()->list_e();
	printf("定义点所在的指令：");
	((machine_instr *)the_reach->catalog()->lookup(n))->print(stdout);
	printf("\n");
				cfg_node_list_iter cnli(subgraph->nodes());
				while(!cnli.is_empty())
				{
					cfg_node *cn = cnli.step();
					if(cn->is_block())
					{
						cfg_block *cb = (cfg_block *)cn;
						if(cb->contains(test))
							pos = n;
	printf("pos:");
	printf("%d",pos);
	printf("\n");


					}
				}
			}
	printf("针对%d 的定义点\"%d\";\n",definee,pos);
	//printf("针对");
	//printf("%d",definee);
	//printf("的定义点pos");
	//printf("%d",pos);
			if(pos != -1)
				res->add(pos);
		}
	printf("在最可能路径上找的最近定义点：");
	res->print(stdout);
	printf("\n");
		return res;
}

/*
 *search_latest_def_point_before_instr() --- find the latest define point before the tree_instr(pos) in the current block of
 *                                           super block(subgraph).
 在超级基本块的当前基本块之前找最近定义点
 */
tree_instr *search_latest_def_point_before_instr(operand var_op, tree_instr *pos, cfg_block *curr_block, super_block *subgraph)
{
    super_block *precede_cfg_nodes = new super_block(super_block::BLOCK_LIST);
    cfg_node_list_iter cnli(subgraph->nodes());
    while(!cnli.is_empty())
    {
        cfg_node *cn = cnli.step();
        if(cn == curr_block)//在当前块中找，如果遇到
            break;

        if(cn->is_block())//如果节点的类型是块，则加入新建立的超级块中
            precede_cfg_nodes->add_block(cn);

    }

    tree_instr *t_instr = search_latest_define_point(var_op, pos, curr_block, precede_cfg_nodes);
    delete precede_cfg_nodes;
    return t_instr;
}

/*
 *find_block_contains_instr() --- find the super block contains the instruction ins.
 找包含该指令的超级块
 */
cfg_block *find_block_contains_instr(super_block *subgraph, machine_instr *mi)
{
    cfg_node_list_iter cnli(subgraph->nodes());
    while(!cnli.is_empty())
    {
        cfg_node *cn = cnli.step();
        if(cn->is_block())
        {
            cfg_block *cb = (cfg_block *)cn;
            if(cb->contains(mi->parent()->list_e()))
                return cb;
        }
    }

    return 0;
}

/*
 *search_related_point() --- find the definee's related live-ins
 */
bit_set *search_related_point(bit_set *definees, super_block *subgraph, bit_set *related)
{
    Procedure *procedure = Procedure::getCurrentProcedure();
    reaching_def_problem *the_reach = procedure->getTheReach();

    bit_set *res = new bit_set(0, the_reach->catalog()->num_defs());
    bit_set *prev_res = new bit_set(0, the_reach->catalog()->num_defs());

    search_latest_define_point(definees, subgraph, res);
printf("definees 最近定义点：");
res->print(stdout);
printf("\n");
    while(!res->is_empty())
    {
        *related += *res;
        *prev_res = *res;
        res->clear();
        bit_set_iter iter(prev_res);
        while(!iter.is_empty())
        {
            int n = iter.step();
            machine_instr *m_instr = (machine_instr *)the_reach->catalog()->lookup(n);
            cfg_block *cb = find_block_contains_instr(subgraph, m_instr);
printf("最近定义点指令所在块信息：");
cb->print(stdout);
cb->print_with_instrs(stdout);
printf("\n");
            if(cb == 0)
                m_instr->print();

            for(int i = 0; i < m_instr->num_srcs(); i++)
            {
                operand opd = m_instr->src_op(i);
printf("m_instr:");
m_instr->print(stdout);
printf("\n");
                if(opd.is_symbol()|| opd.is_reg())
                {
                    tree_instr *t_ins = search_latest_def_point_before_instr(opd, m_instr->parent(), cb, subgraph);
                    if(t_ins != 0)
                    {
printf("最近定义opd的指令：");
((machine_instr *)t_ins->instr())->print(stdout);
printf("\n");
                    	int pos = the_reach->catalog()->first_id((machine_instr *)t_ins->instr());
printf("依赖指令第一个定义点的id：");
printf("%d\n",pos);


                    	res->add(pos);
printf("res:");
res->print(stdout);
printf("\n");
                    }
                }
            }
        }
    }
    return related;
}
