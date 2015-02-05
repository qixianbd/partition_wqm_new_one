#ifndef SUPER_BLOCK_H
#define SUPER_BLOCK_H

#include <suif_copyright.h>

#include "common.h"

class super_block
{
public:
    enum super_block_kind
    {
        BLOCK,
        BLOCK_LIST,
        LOOP,
        CFG_BEGIN,
        CFG_END
    };
private:
    int super_block_num;                /*super block's number ID*/
    super_block_kind kind;              /*super block's kind*/
    cfg_node_list *cnl;                 /*cfg node list*/
    super_block *succs[2];              /*super block's successors, contain fall and take successor*/
    float taken_probability;            /*successor taken probability*/
    super_block *immed_dominator;       /*super block's immed dominator*/
    super_block *immed_pdominator;      /*super block's immed postdominator*/

    bool fallVisit;
    bool takenVisit;
public:
    super_block(super_block_kind block_kind = BLOCK);
    ~super_block();
    super_block_kind knd(){return kind;}
    void set_block_num(int num);
    int block_num(){return super_block_num;}
    cfg_node_list *nodes();
    int size();
    int instr_size();
    void add_block(cfg_node *);
    void add_blocks(cfg_node_list *);
    cfg_node *first_block();
    cfg_node *last_block();
    machine_instr *instr_access(int n);
//    tnle* instr_access(int n);
    machine_instr *instr_access(cfg_node *node, int n);
    int instr_count(machine_instr *);
    bool contains(cfg_node *node);
    bool contains(machine_instr *mi);
    cfg_block* in_which_block(tnle *pos);
    void set_immed_dom(super_block *immed_dom);
    super_block* immed_dom();
    void set_immed_pdom(super_block *immed_pdom);
    super_block* immed_pdom();
    void set_fall_succ(super_block *fall_succ);
    super_block* fall_succ();
    void set_take_succ(super_block *take_succ, float taken_prob);

    super_block* likely_succ();
    super_block* take_succ();
    float taken_prob();
    float fall_prob();
    void flush();
    void print(FILE *fp = stdout);
    void print_relationship(FILE *fp = stdout);
    super_block& operator=(const super_block &other);

  /**
   * addbykeyming at 20150126
   */
public:
    bool isDominatorOf(super_block* candidate_diminatee);
    bool isPdominatorOf(super_block* candidate);
    bool isHaveTwoBranch(){
    	if(this->taken_probability >= 0.1 && 1- taken_probability >= 0.1){
    		return true;
    	}
    	return false;
    }


	bool isFallVisit() const {
		return fallVisit;
	}

	void setFallVisit(bool fallVisit) {
		this->fallVisit = fallVisit;
	}

	bool isTakenVisit() const {
		return takenVisit;
	}

	void setTakenVisit(bool takenVisit) {
		this->takenVisit = takenVisit;
	}
};

DECLARE_LIST_CLASS(super_block_list, super_block *);

int block_size(cfg_block *cb);
int block_size_from_instr(cfg_block *cb, machine_instr *mi);

#endif
