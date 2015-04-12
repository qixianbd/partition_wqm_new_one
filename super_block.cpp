#include <suif_copyright.h>
#include "super_block.h"
#include "procedure.h"

extern char *k_call_overhead;
extern int cfg_node_static_instr_size(cfg_node *node);
/*
 *super_block::super_block() --- According to block kind, construct super block.
 */
super_block::super_block(super_block_kind block_kind):kind(block_kind)
{
    super_block_num = 0;
    cnl = new cfg_node_list();
    succs[0] = 0;
    succs[1] = 0;
    taken_probability = 0.001;
    immed_dominator = 0;
    immed_pdominator = 0;
    fallVisit = false;
    takenVisit = false;
}

/*
 *super_block::~super_block() --- destructor of super block
 */
super_block::~super_block()
{
    delete cnl;
}

/*
 *super_block::set_block_num() --- set each super block's number.
 */
void super_block::set_block_num(int num)
{
    this->super_block_num = num;
}

/*
 *super_block::nodes() --- return super block's cfg node list.
 */
cfg_node_list *super_block::nodes()
{
    return cnl;
}

/*
 *super_block::size() --- compute super block's size(dynamic instruction number)
 *super_block::size() ---什么叫dynamic instruction??这个函数和下面的函数之间有啥区别.
 */
int super_block::size()
{
    int size = 0;
    cfg_node_list_iter cnl_iter(cnl);
    while (!cnl_iter.is_empty()) {
	cfg_node *curr_node = cnl_iter.step();
	if (curr_node->is_block()) {
	    size += block_size((cfg_block *) curr_node);
	}
    }
    return size;
}

/*
 *super_block::instr_size() --- compute super block's instruction size, don't contain lab, loc, and null
 *super_block::instr_size() --keyming-- 计算该超级块含有多少条指令, 不计算lab, loc, null.
 *
 */
int super_block::instr_size()
{
    int counter = 0;
    cfg_node_list_iter cnl_iter(cnl);
    while (!cnl_iter.is_empty()) {
	cfg_node *cn = cnl_iter.step();
	if (cn->is_block()) {
	    cfg_node_instr_iter cnii(cn);
	    while (!cnii.is_empty()) {
		tree_instr *test = cnii.step();
		machine_instr *mi = (machine_instr *) test->instr();
		if ((int) mi->opcode() == mo_lab
		    || (int) mi->opcode() == mo_loc
		    || (int) mi->opcode() == mo_null)
		    continue;
		else
		    counter++;
	    }
	}
    }
    return counter;
}

/*
 *super_block::add_block() --- add cfg node to cfg node list(cnl).
 */
void super_block::add_block(cfg_node * the_block)
{
    if (the_block == NULL)
	fprintf(stderr, "add a NULL block\n");

    //If the block doesn't belong to nodes()
    if (!occurs(the_block, nodes())) {
	cnl->append(the_block);
    }
}

/*
 *super_block::add_blocks() --- add cfg node list to current super block
 */
void super_block::add_blocks(cfg_node_list * the_list)
{
    cfg_node_list_iter the_list_iter(the_list);
    while (!the_list_iter.is_empty()) {
	cfg_node *cn = the_list_iter.step();
	if (!this->contains(cn)) {
	    cnl->append(cn);
	}
    }
}

/*
 *super_block::first_block() --- find the first cfg block of the super block.
 */
cfg_node *super_block::first_block()
{
    cfg_node *first = NULL;
    Procedure *procedure = Procedure::getCurrentProcedure();
    cfg_node_list *the_full_cnl	 = procedure->getTheFullCnl();
    cfg_node_list_iter full_cnl_iter(the_full_cnl);
    while (!full_cnl_iter.is_empty()) {
	cfg_node *test = full_cnl_iter.step();
	if (occurs(test, nodes())) {
	    first = test;
	    break;
	}
    }
    return first;
}

/*
 *super_block::last_block() --- return the last block of the super block
 */
cfg_node *super_block::last_block()
{
    cfg_node *last = NULL;
    Procedure *procedure = Procedure::getCurrentProcedure();
    cfg_node_list *the_full_cnl	 = procedure->getTheFullCnl();
    cfg_node_list_iter full_cnl_iter(the_full_cnl);
    while (!full_cnl_iter.is_empty()) {
	cfg_node *test = full_cnl_iter.step();
	if (occurs(test, nodes())) {
	    last = test;
	}
    }
    return last;
}

/*
 *super_block::instr_access() --- return the nth instruction of the super block.
 */
machine_instr *super_block::instr_access(int n)
{
    tree_instr *test;
    int counter = 0;
    cfg_node_list_iter cnl_iter(cnl);
    while (!cnl_iter.is_empty()) {
	cfg_node *cn = cnl_iter.step();
	if (cn->is_block()) {
	    cfg_node_instr_iter cnii(cn);
	    while (!cnii.is_empty()) {
		test = cnii.step();
		machine_instr *mi = (machine_instr *) test->instr();
//                if((int)mi->opcode() == mo_null || (int)mi->opcode() == mo_lab || (int)mi->opcode() == mo_loc)
//                    continue;
		if (counter == n) {
//                    printf("***********************\n");
//                    mi->print();
//                    printf("***********************\n");
		    return mi;
		} else
		    counter++;

	    }
	}
    }
    return 0;
}

/*
tnle* super_block::instr_access(int n)
{
    tree_instr *test;
    int counter = 0;
    cfg_node_list_iter cnli(cnl);
    while(!cnli.is_empty())
    {
        cfg_node *cn = cnli.step();
        if(cn->is_block())
        {
            cfg_node_instr_iter cnii(cn);
            while(!cnii.is_empty())
            {
                test = cnii.step();
                if(counter == n)
                    return test->list_e();
                else
                    counter++
            }
        }
    }
    return NULL;
}
*/

/*
 *super_block::instr_access() --- return the n'th instruction of cfg node(node)
 */
machine_instr *super_block::instr_access(cfg_node * node, int n)
{
    tree_instr *test;
    int counter = 0;
    cfg_node_list_iter cnl_iter(cnl);
    while (!cnl_iter.is_empty()) {
	cfg_node *cn = cnl_iter.step();
	if (cn == node) {
	    cfg_node_instr_iter cnii(cn);
	    while (!cnii.is_empty()) {
		test = cnii.step();
		machine_instr *mi = (machine_instr *) test->instr();
		if ((int) mi->opcode() == mo_null
		    || (int) mi->opcode() == mo_lab
		    || (int) mi->opcode() == mo_loc) {
		    continue;
		} else if (counter == n)
		    return mi;
		else
		    counter++;
	    }
	}
    }
    return 0;
}

/*
 *super_block::instr_count() --- return the machine instruction(mi)'s number ID
 */
int super_block::instr_count(machine_instr * mi)
{
    int counter = 0;
    cfg_node_list_iter cnl_iter(cnl);
    while (!cnl_iter.is_empty()) {
	cfg_node *cn = cnl_iter.step();
	if (cn->is_block()) {
	    cfg_node_instr_iter cnii(cn);
	    while (!cnii.is_empty()) {
		tree_instr *test = cnii.step();
		if ((machine_instr *) test->instr() == mi)
		    return counter;
		else if ((int) ((machine_instr *) test->instr())->
			 opcode() == mo_null
			 || (int) ((machine_instr *) test->instr())->
			 opcode() == mo_lab
			 || (int) ((machine_instr *) test->instr())->
			 opcode() == mo_loc)
		    continue;
		else
		    counter++;
	    }
	}
    }
    return 0;
}

/*
 *super_block::contains() --- determine the super block whether contains the cfg node(node).
 */
bool super_block::contains(cfg_node * node)
{
    cfg_node_list_iter iter(cnl);
    while (!iter.is_empty()) {
	cfg_node *mynode = iter.step();
	if (mynode == node)
	    return true;
    }

    return false;
}

/*
 *super_block::contains() --- determine the super block whether contains machine instruction(mi).
 */
bool super_block::contains(machine_instr * mi)
{
    cfg_node_list_iter cnli(cnl);
    while (!cnli.is_empty()) {
	cfg_node *cn = cnli.step();
	if (cn->is_block()) {
	    cfg_block *block = (cfg_block *) cn;
	    cfg_node_instr_iter cnii(block);
	    while (!cnii.is_empty()) {
		machine_instr *mi_in_block =
		    (machine_instr *) (cnii.step())->instr();
		if (mi == mi_in_block)
		    return true;
	    }
	}
    }
    return false;
}

/*
 *super_block::in_which_block() --- find tnle position in which block, and return the cfg_block
 *super_block::in_which_block() --keyming--测试该超级块是否包含pos指向的指令, 如果包含, 返回包含该指令的基本块.
 */
cfg_block *super_block::in_which_block(tnle * pos)
{
    cfg_node_list_iter iter(cnl);
    while (!iter.is_empty()) {
		cfg_node *node = iter.step();
		if (node->is_block()) {
			cfg_block *block = (cfg_block *) node;
			if (block->contains(pos))
			return block;
		}
    }
    return 0;
}

/*
 *super_block::set_immed_dom() --- set current super block's immed dominator.
 */
void super_block::set_immed_dom(super_block * immed_dom)
{
    this->immed_dominator = immed_dom;
}

/*
 *super_block::immed_dom() --- return current super block's immed dominator.
 */
super_block *super_block::immed_dom()
{
    return this->immed_dominator;
}

/*
 *super_block::set_immed_pdom() --- set current block's immed postdominator.
 */
void super_block::set_immed_pdom(super_block * immed_pdom)
{
    this->immed_pdominator = immed_pdom;
}

/*
 *super_block::immed_pdom() --- return current super block's immed postdominator.
 */
super_block *super_block::immed_pdom()
{
    return this->immed_pdominator;
}

/*
 *super_block::set_fall_succ() --- set current super block's fall successor.
 */
void super_block::set_fall_succ(super_block * fall_succ)
{
    succs[0] = fall_succ;
}

/*
 *super_block::fall_succ() --- return fall successor of the super block.
 */
super_block *super_block::fall_succ()
{
    return succs[0];
}

/*
 *super_block::set_take_succ() --- set current super block's take successor.
 */
void super_block::set_take_succ(super_block * take_succ, float taken_prob)
{
    succs[1] = take_succ;
    this->taken_probability = taken_prob;
}

/*
 *super_block::take_succ() --- return current super block's take successor.
 */
super_block *super_block::take_succ()
{
    return succs[1];
}

/*
 *super_block::likely_succ() --- return current super block's likely successor.
 */
super_block *super_block::likely_succ()
{
    if (taken_prob() > 0.5)
	return take_succ();
    else
	return fall_succ();
}

/*
 *super_block::taken_prob() --- return current super block's taken probability.
 */
float super_block::taken_prob()
{
    return taken_probability;
}

float super_block::fall_prob(){
	return 1 - taken_probability;
}

/*
 *super_block::flush() --- flush current cfg node list.
 *super_block::flush() --keyming-- 清空当前cfg node 表 ???
 */
void super_block::flush()
{
    delete cnl;
    cnl = new cfg_node_list();
}

/*
 *super_block::print() --- print super block
 */
void super_block::print(FILE * fp)
{
    cfg_node_list_iter cnli(cnl);
    while (!cnli.is_empty()) {
	cfg_node *node = cnli.step();
	if (node == NULL) {
	    fprintf(stderr, "access NULL\n");
	    exit(1);
	}
    cfg_node_instr_iter cnii(node);
		    while (!cnii.is_empty()) {
				instruction *in = cnii.step()->instr();
				//in->instruction::print(fp, 1, 1);

				print_instruction(in, fp);
		    }
	node->print(fp);
    }
}

/*
 *super_block::print_relationship() --- print super block relationship, such as: cfg nodes contained in each super block, and
 *                                      each super block's fall super block, take super block, dominator, and postdominator
 *                                      super block.
 */
void super_block::print_relationship(FILE * fp)
{
    fprintf(fp, "super block %d : ", super_block_num);
    fprintf(fp, "contain: <");
    cfg_node_list_iter iter(cnl);
    while (!iter.is_empty()) {
	cfg_node *node = iter.step();
	fprintf(fp, "%d ", node->number());
    }
    fprintf(fp, ">");
    fflush(stdout);
    fprintf(fp, "fall:");
    if (succs[0] == NULL)
    	fprintf(fp, " nil ");
    else
    	fprintf(fp, "%d ", succs[0]->block_num());

    fprintf(fp, "take:");
    if (succs[1] == NULL)
    	fprintf(fp, " nil");
    else
    	fprintf(fp, "%d ", succs[1]->block_num());

    fprintf(fp, "dom:");
    if (immed_dominator == NULL)
    	fprintf(fp, " nil ");
    else
    	fprintf(fp, "%d ", immed_dominator->block_num());

    fprintf(fp, "pdom:");
    if (immed_pdominator == NULL)
    	fprintf(fp, " nil ");
    else
    	fprintf(fp, "%d ", immed_pdominator->block_num());
    fprintf(fp, "\n");
}

//have some problem
/*
 *super_block::operator=() --- super block's copy constructor 
 */
super_block & super_block::operator=(const super_block & other)
{
    if (this == &other)
	return *this;
    delete cnl;

    cnl = new cfg_node_list();

    cnl->copy(other.cnl);
    return *this;
}

int block_size(cfg_block * block)
{
    assert(block->is_block());   
 
    int size = 0;
    cfg_node_instr_iter instr_iter(block);
    while (!instr_iter.is_empty()) {
	tree_instr *ti = instr_iter.step();
	machine_instr *mi = (machine_instr *) ti->instr();
	if ((int) mi->opcode() == mo_null || (int) mi->opcode() == mo_lab || (int) mi->opcode() == mo_loc){
	    continue;
        }
		else if ((int) mi->opcode() == mo_jalr) {
			immed_list *iml =
			(immed_list *) (mi->peek_annote(k_call_overhead));
			if (iml) {
				int overhead = (*iml)[0].integer();
				if (overhead == 0)
					size++;
				else
					size += overhead;
			}
			else{
				size++;
			}
		}
		else{
			size++;
        }
    }
    return size;
}

/*
 *block_size_from_instr() --- compute block's size from the instruction.
 计算从这条指令开始的块的大小
 */
int block_size_from_instr(cfg_block * cb, machine_instr * mi_instr)
{
    int size = 1;
    cfg_node_instr_iter cb_instr_iter(cb);
    while (!cb_instr_iter.is_empty()) {
	tree_instr *ti = cb_instr_iter.step();
	machine_instr *mi = (machine_instr *) ti->instr();
	//从mi_instr指令算起，它是块中的第一条指令
	if (mi == mi_instr)
	    size = 1;
	else if (size == 0)
	    continue;
	else {			//一种情况空，标签，和行号指令不算指令；一种情况为函数调用；一种情况为其他
	    /* mo_loc：specifies source and line number */
	    if ((int) mi->opcode() == mo_null
		|| (int) mi->opcode() == mo_lab
		|| (int) mi->opcode() == mo_loc)
		continue;

	    //函数调用指令的开销
	    else if ((int) mi->opcode() == mo_la) {	//peek_annote函数从他找到的第一个具有k_call_overhead名字的注释中返回数据域
		immed_list *iml =
		    (immed_list *) (mi->peek_annote(k_call_overhead));
		if (iml) {
		    int overhead = (*iml)[0].integer();	//指的是被调用的指令条数
		    if (overhead == 0)
			size++;
		    else
			size += overhead;
		} else
		    size++;
	    } else
		size++;
	}
    }
    assert(size != 0);
    return size;
}

bool super_block::isDominatorOf(super_block* candidate_diminatee) {
	if(candidate_diminatee->knd() == CFG_END){
		return true;
	}

	super_block *dom = candidate_diminatee->immed_dom();
	while(dom != NULL){
		if(dom == this){
			return true;
		}
		dom = dom->immed_dom();
	}
	return false;
}

bool super_block::isPdominatorOf(super_block* candidate) {
	if(candidate->knd() == CFG_BEGIN){
		return true;
	}
	super_block *pdom = candidate->immed_pdom();
	while(pdom != NULL){
		if(pdom == this){
			return true;
		}
		pdom = pdom->immed_pdom();
	}
	return false;
}

int cfg_node_static_instr_size(cfg_node *node) {
	assert(node->is_block());

	int counter = 0;
	cfg_node_instr_iter cnii(node);
	while (!cnii.is_empty()) {
		tree_instr *test = cnii.step();
		machine_instr *mi = (machine_instr *) test->instr();
		if ((int) mi->opcode() == mo_lab || (int) mi->opcode() == mo_loc
				|| (int) mi->opcode() == mo_null){
			continue;
		}
		else{
			counter++;
		}
	}

	return counter;
}
