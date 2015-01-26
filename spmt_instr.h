#ifndef ST_SPMT_INSTR_H
#define ST_SPMT_INSTR_H

extern label_sym* peek_cqip_pos(tnle *item);

extern tnle* insert_spawn_instr(cfg_block *block, tnle *spawn_pos, label_sym *cqip_pos_num);
extern tnle* insert_cqip_instr(cfg_block *, bool before_label = false);
extern tnle* insert_cqip_instr_for_loop(cfg_block *, bool before_label = false);
extern tnle* insert_cancel_instr(cfg_node *, label_sym *);
extern label_sym* peek_pslice_entry_pos(tnle *item);
extern label_sym* peek_pslice_exit_pos(tnle *item);

#endif
