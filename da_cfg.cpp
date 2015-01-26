#include <suif_copyright.h>
#include <stdio.h>
#include <suif1.h>
#include <machine.h>
#include <string.h>

#include "da_cfg.h"
#include "spmt_utility.h"
#include "misc.h"

/*
 *da_cfg::da_cfg() --- constructor of cfg contains data analysis 
 */
da_cfg::da_cfg(tree_block *b,
            boolean build_blocks,
            boolean break_at_call,
            boolean keep_layout) :
    cfg(b, build_blocks, break_at_call, keep_layout)
{
    liveness_more = NULL;
}

/*
 *da_cfg::~da_cfg() --- destructor of cfg contains data analysis.
 */
da_cfg::~da_cfg()
{
    delete liveness_more;
}

/*
 *da_cfg::find_live_vars_more() --- find live vars according to the operand bit manager
 */
void da_cfg::find_live_vars_more(operand_bit_manager *bit_man)
{
    delete liveness_more;
    liveness_more = new live_var_problem_more(this, bit_man, Instruction_def_use);
}

/*
 *da_cfg::print_cfg() --- print da_cfg
 */
void da_cfg::print_cfg(FILE *fp)
{
    for(unsigned i = 0; i < num_nodes(); i++)
    {
        cfg_node *cn = node(i);
        if(cn->is_begin())
            ((cfg_begin *)cn)->print();
        if(cn->is_block())
        {
            ((cfg_block *)cn)->print_with_instrs();
            printf("immed_postdom: Block %d\n\n", immed_postdom(cn)->number());
        }
        if(cn->is_end())
            ((cfg_end *)cn)->print();
    }
}

/*
 *da_cfg::print_dfa() --- print data flow analysis.
 */
void
da_cfg::print_dfa(FILE *fp)
{
    liveness_more->dump(fp);
}

/*
 *da_cfg::find_liveins() --- find the super block sb's live-ins.
 *da_cfg::find_liveins() --comment by keyming: 寻找在该超级块有引用而没有定义的变量集合. 通常该超级块指代的就是待分析的线程单元.
 *da_cfg::find_liveins() ---commmet by keyming: 通过这个方法可以找到线程的"livein"变量(注意此livein)变量与live variables 不一样.
 */
void da_cfg::find_liveins(super_block *sb, operand_bit_manager *bit_man, bit_set *livein)
{
	printf("super_block_kind:");
	int a=int(sb->knd());
	printf("%d",a);
	printf("\n");
	printf("super_block");
	sb->print_relationship(stdout);
	printf("\n");
	bit_set use(0, bit_man->num_bits());
	bit_set def(0, bit_man->num_bits());
	bit_set def1(0, bit_man->num_bits());
	bit_set use1(0, bit_man->num_bits());
	cfg_node_list_iter cnli(sb->nodes());
	while(!cnli.is_empty())
	{
		cfg_node *cn = cnli.step();

		def += *(all_def_set(cn));
		printf("def_set_all:");
		def.print(stdout);
		printf("\n");
		def1 = *(all_def_set(cn));
		use = *(use_set(cn));
		printf("def_set_each:");
		def1.print(stdout);
		printf("\n");
		printf("use_set_each:");
		use.print(stdout);
		printf("\n");
		bit_set_iter use_iter(&use);

		while(!use_iter.is_empty())
		{
			int n = use_iter.step();
			if(!def.contains(n))
				use1.add(n);
		}
		printf("use_set:");
		use1.print(stdout);
		printf("\n");
	}

	livein->copy(&use1);
	printf("livein:");
	livein->print(stdout);
	printf("\n");
}

/*
 *da_cfg::find_liveins_of_loop() -- find the loop block's live-ins.
 */

void da_cfg::find_liveins_of_loop(loop_block *loop, operand_bit_manager *bit_man, bit_set *livein)
{
    bit_set use(0, bit_man->num_bits());
    bit_set def(0, bit_man->num_bits());

    cfg_block *cn = (cfg_block *)loop->end_node();
    //use = *(live_out_set(cn));
    //use = *(use_set(cn));
    //def = *(all_def_set(cn));
    //use += def;
    
    if(cn->ends_in_cti())
    {
        machine_instr *mi_ctl = (machine_instr *)((cfg_block *)cn)->in_cti()->instr();
        printf("########################################################");
        mi_ctl->print(stdout);
        for(int i = 0; mi_ctl && i < mi_ctl->num_srcs(); i++)
        {
            operand opd = mi_ctl->src_op(i);
            if(opd.is_symbol() || opd.is_reg())
            {
                bit_man->insert(opd, &use);
            }
            /*
            if(opd.is_instr())
            {
                machine_instr *mi = (machine_instr *)opd.instr();
                printf("#########################################################");
                mi->print(stdout);
                bit_man->insert(mi->dst_op(), &use);
                for(int i = 0; i < mi->num_srcs(); i++)
                {
                    operand opd1 = mi->src_op(i);
                    if(opd.is_reg() || opd.is_symbol())
                        bit_man->insert(opd, &use);
                }
            }
            if(opd.is_expr())
            {

            }
            */
        }
    }
    if(cn->ends_in_ubr())
    {
        find_liveins((super_block *)loop, bit_man, &use);
    }
    

    livein->copy(&use);
}

/*
 *da_cfg::generate_dot() -- generate cfg graph for dot, like as VCG
 */
void da_cfg::generate_dot(FILE *fp /*= stdout*/)
{
	static unsigned int Subgraph_ID = 0;
	static unsigned int Block_base = 0;

	char proc_name[32];
	char temp[16], temp2[16];

	fprintf(fp, "subgraph cluster_%s{\n", itoa(Subgraph_ID++, temp, 10));
	fprintf(fp, "\tlabel = \"%s\"", tproc()->proc()->name());
	fprintf(fp, "\tstyle = \"dashed\";\n");
	fprintf(fp, "\tcolor = purple;\n");

	for(int i = 0; i < num_nodes(); i++)
	{
		cfg_node *cn = node(i);
		if(cn->is_begin())
		{
			fprintf(fp, "\tNode%s [label = \"%s\"];\n", 
					itoa(Block_base + cn->number(), temp, 10), "Begin");

		}
		else if(cn->is_end())
		{
			fprintf(fp, "\tNode%s [label = \"%s\"];\n",
					itoa(Block_base + cn->number(), temp, 10), "End");
		}
		else
		{
			fprintf(fp, "\tNode%s [label = \"B%s\"];\n",
					itoa(Block_base + cn->number(), temp, 10), itoa(cn->number(), temp2, 10));
		}
		fprintf(fp, "\tNode%s -> {", itoa(Block_base + cn->number(), temp, 10));

		cfg_node_list_iter cnl_iter(cn->succs());
		while(!cnl_iter.is_empty())
		{
			cfg_node *succ_cn = cnl_iter.step();
			//for the begin block, there is edge from begin block to the end block, so we must delete this edge from cfg.
			if(cn->is_begin() && succ_cn->is_end())
				continue;
			
			fprintf(fp, "Node%s ",itoa(Block_base + succ_cn->number(), temp, 10));
		}
		fprintf(fp, "}\n");
	}
	fprintf(fp, " }\n");
	Block_base += num_nodes();
}


