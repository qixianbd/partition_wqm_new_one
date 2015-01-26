#include <suif_copyright.h>
#include <string.h>
#include "common.h"
#include "procedure.h"

/*
 *insert_spawn_instr() --- insert spawn point instruction插入sp点指令
 */
tnle *insert_spawn_instr(cfg_block *sp_block, tnle *sp_pos, label_sym *cqip_pos)
{
/*	if(sp_block->number()==2&&((machine_instr *)sp_block->in_head()->instr())->opcode()==mo_null&&((machine_instr *)((tree_instr *)sp_pos->contents)->instr())->opcode()==mo_null)
	{
	printf("此语句为过程体的第一个空语句");
	int temp;
	scanf("%d",&temp);
	}
printf("插入sp_pos指令：");
((machine_instr *)((tree_instr *)sp_pos->contents)->instr())->print(stdout);
printf("\n");

printf("cfg_block第一条指令和最后一条指令：");
if(!(machine_instr *)sp_block->in_head()){
    printf("第一条指令为空");
    }
else{
	((machine_instr *)sp_block->in_head()->instr())->print(stdout);
}
if(!(machine_instr *)sp_block->in_tail()){
	printf("最后一条指令为空");
	}
else{
	((machine_instr *)sp_block->in_tail()->instr())->print(stdout);
}
printf("\n");
*/
	immed_list *an_iml = new immed_list;
    an_iml->append(immed(cqip_pos));

    machine_instr *spawn_mi = new mi_bj(mo_spawn, cqip_pos);
    spawn_mi->set_annote(k_cqip_pos, an_iml);

    tree_node_list_e *new_tnle = new tree_node_list_e(new tree_instr(spawn_mi));

    //for sp_block's first tnle is cqip instr
    tnle *first_tnle_of_block = sp_block->first_non_label();
    tree_instr *first_instr = (tree_instr *)first_tnle_of_block->contents;
    machine_instr *first_mi = (machine_instr *)first_instr->instr();

    if(first_mi->opcode() == mo_cqip)
    {
        while(first_mi->opcode() != mo_pslice_exit)
        {
            first_tnle_of_block = first_tnle_of_block->next();
            first_instr = (tree_instr *)first_tnle_of_block->contents;
            first_mi = (machine_instr *)first_instr->instr();
        }
        sp_pos = first_tnle_of_block;

    }
    sp_block->insert_after(new_tnle, sp_pos);

    return new_tnle;
}

/*
 *insert_cqip_instr() --- insert control quasi-independent point instruction
 插入控制无关点指令
 */
tnle *insert_cqip_instr(cfg_block *cqip_block, bool before_label)
{
    assert(cqip_block->is_block());
    Procedure* procedure = Procedure::getCurrentProcedure();
    mproc_symtab* cur_psymtab = procedure->getCurPsymtab();


    //label_sym *cqip_pos = cqip_block->get_label();
    label_sym *cqip_pos = cur_psymtab->pst()->new_unique_label();
    mi_lab *mi = new mi_lab(mo_lab, cqip_pos);

    immed_list *an_iml = new immed_list;
    an_iml->append(immed(cqip_pos));

    mi_bj *cqip_mi = new mi_bj(mo_cqip, cqip_pos);
    cqip_mi->set_annote(k_cqip_pos, an_iml);
    

    
    tree_node_list_e *new_tnle = new tree_node_list_e(new tree_instr(cqip_mi));
//    if(before_label)
//        cqip_block->push(new_tnle);
//    else
        cqip_block->insert_before(new_tnle, cqip_block->first_non_label());
        //cqip_block->insert_before(new_tnle, cqip_block->first_active_op());
        //cqip_block->push(new_tnle);

    tree_node_list_e *new_tnle_label = new tree_node_list_e(new tree_instr(mi));
    cqip_block->insert_after(new_tnle_label, new_tnle);

    return new_tnle;
}

tnle *insert_cqip_instr_for_loop(cfg_block *cqip_block, bool before_label)
{
    assert(cqip_block->is_block());
    Procedure* procedure = Procedure::getCurrentProcedure();
    mproc_symtab* cur_psymtab = procedure->getCurPsymtab();


    label_sym *cqip_pos = cur_psymtab->pst()->new_unique_label();
    mi_lab *mi = new mi_lab(mo_lab, cqip_pos);

    immed_list *an_iml = new immed_list;
    an_iml->append(immed(cqip_pos));

    mi_bj *cqip_mi = new mi_bj(mo_cqip, cqip_pos);
    cqip_mi->set_annote(k_cqip_pos, an_iml);

    tree_node_list_e *new_tnle = new tree_node_list_e(new tree_instr(cqip_mi));
    if(cqip_block->last_non_cti())
    {
        cqip_block->insert_after(new_tnle, cqip_block->last_non_cti());
        //cqip_block->insert_before(new_tnle, cqip_block->last_non_cti());

        tree_node_list_e *new_tnle_label = new tree_node_list_e(new tree_instr(mi));
        cqip_block->insert_after(new_tnle_label, new_tnle);

        return new_tnle;
    }

    return 0;
}
/*
 *insert_cancel_instr() --- insert cancel instruction
 插入cancel指令
 */
tnle *insert_cancel_instr(cfg_node *rarely, label_sym *cqip_pos)
{
    assert(rarely->is_block());
    Procedure* procedure = Procedure::getCurrentProcedure();
    mproc_symtab* cur_psymtab = procedure->getCurPsymtab();


    immed_list *an_iml = new immed_list;
    an_iml->append(immed(cqip_pos));

    machine_instr *cancel_mi = new mi_bj(mo_cancel, cqip_pos);
//    machine_instr *squash_mi = new mi_bj(mo_squash, cqip_pos);
    tree_node_list_e *new_tnle = new tree_node_list_e(new tree_instr(cancel_mi));
    if(((cfg_block *)rarely)->first_active_op() != NULL)    //debug by voronoi
        ((cfg_block *)rarely)->insert_before(new_tnle, ((cfg_block *)rarely)->first_active_op());

    return new_tnle;
}

/*
 *peek_cqip_pos() --- look for control quasi-independent point position, and return the label symbol of cqip.
 */
label_sym *peek_cqip_pos(tnle *item)
{
    Procedure* procedure = Procedure::getCurrentProcedure();
    mproc_symtab* cur_psymtab = procedure->getCurPsymtab();

    if(item->contents->is_instr())
    {
        tree_instr *ti = (tree_instr *)item->contents;
        immed_list *iml = (immed_list *)(ti->instr()->peek_annote(k_cqip_pos));
        if(iml)
        {
            return ((label_sym *)((*iml)[0].symbol()));
        }
    }

    return NULL;
}

/*
 *peek_pslice_entry_pos() --- look for entry position of pre-compute slice.
 寻找预计算片段的入口位置
 */
label_sym *peek_pslice_entry_pos(tnle *item)
{
    if(item->contents->is_instr())
    {
        tree_instr *ti = (tree_instr *)item->contents;
        immed_list *iml = (immed_list *)(ti->instr()->peek_annote(k_pslice_entry_pos));
        if(iml)
        {
            return ((label_sym *)((*iml)[0].symbol()));
        }
    }

    return NULL;
}

/*
 *peek_pslice_exit_pos() --- look for exit position of pre-compute slice.
 寻找预计算片段的结束位置
 */
label_sym *peek_pslice_exit_pos(tnle *item)
{
    if(item->contents->is_instr())
    {
        tree_instr *ti = (tree_instr *)item->contents;
        immed_list *iml = (immed_list *)(ti->instr()->peek_annote(k_pslice_exit_pos));
        if(iml)
        {
            return ((label_sym *)((*iml)[0].symbol()));
        }
    }

    return NULL;
}
