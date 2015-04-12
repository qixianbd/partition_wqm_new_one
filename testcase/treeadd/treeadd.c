/* For copyright information, see olden_v1.0/COPYRIGHT */

#include "../include/stdio.h"
#include "../include/stdlib.h"

#define TORONTO

#include "tree.h"

#ifndef TORONTO
#include <cm/cmmd.h>
#include <fcntl.h>
#endif

#ifdef TORONTO
 int NumNodes;
#else
extern int __NumNodes;
#endif

#ifndef TORONTO
void filestuff()
{
  CMMD_fset_io_mode(stdout, CMMD_independent);
  fcntl(fileno(stdout), F_SETFL, O_APPEND);
  if (CMMD_self_address()) exit(0);
  __InitRegs(0);
}
#endif

int dealwithargs(int argc, char *argv[])
{
  int level;

#ifdef TORONTO
  if (argc > 2){ 
    //NumNodes = atoi(argv[2]);
  }else{
    NumNodes = 1;
}
#else
  if (argc > 2) {
    //__NumNodes = atoi(argv[2]);
  }else {
    __NumNodes = 4;
  }
#endif

  if (argc > 1){
    //level = atoi(argv[1]);
  }else{
    level = 8;
  }

  return level;
  
}

/* For copyright information, see olden_v1.0/COPYRIGHT */

/* tree-alloc.c
 */

#ifndef TORONTO
#include "mem-ref.h"
#include "future-cell.h"
#endif



tree_t *TreeAlloc (level, lo, proc)
    int		level, lo, proc;
{

  if (level == 0)
    return NULL;
  else {
#ifdef FUTURES    
    struct tree *new, *right;
    int mid, lo_tmp;
    future_cell_int fleft;
    
    new = (struct tree *) ALLOC(lo, sizeof(tree_t));
    NOTEST();
    FUTURE(level -1, lo+proc/2, proc/2,TreeAlloc,&fleft);
    right=TreeAlloc(level-1,lo,proc/2);
    new->val = 1;
    TOUCH(&fleft);
    new->left = (struct tree *) fleft.value;
    new->right = (struct tree *) right;
    RETEST();
    return new;
#else
    struct tree *new, *right, *left;
    int mid, lo_tmp;

    new = (struct tree *) malloc(sizeof(tree_t));
    left = TreeAlloc(level -1, lo+proc/2, proc/2);
    right=TreeAlloc(level-1,lo,proc/2);
    new->val = 1;
    new->left = (struct tree *) left;
    new->right = (struct tree *) right;
    return new;
#endif
  }

}



/* For copyright information, see olden_v1.0/COPYRIGHT */

/* node.c
 */
#ifndef TORONTO
#include <cm/cmmd.h>
#endif

#ifdef FUTURES
#include "future-cell.h"
#endif

#ifndef TORONTO
#include "mem-ref.h"
#endif


#ifdef TORONTO
extern int NumNodes;
#endif

int dealwithargs(int argc, char *argv[]);

typedef struct {
    long 	level;
} startmsg_t;

int TreeAdd (/* tree_t *t */);
extern tree_t *TreeAlloc (/* int level, int lo, int hi */);

main (int argc, char *argv[])
{
    tree_t	*root;
    int level,result;

#ifdef FUTURES
    level = SPMDInit(argc,argv);
#else
#ifndef TORONTO
    filestuff();
#endif
    level = dealwithargs(argc, argv);
#endif
#ifndef TORONTO
    CMMD_node_timer_clear(0);
    CMMD_node_timer_clear(1);
#endif
#ifdef TORONTO
    chatting("Treeadd with %d levels on %d processors \n",
	     level, NumNodes);
#else
    chatting("Treeadd with %d levels on %d processors \n",
	     level, __NumNodes);
#endif
    /* only processor 0 will continue here. */
    chatting("About to enter TreeAlloc\n"); 
#ifndef TORONTO
    CMMD_node_timer_start(0);
#endif

#ifdef TORONTO
    root = TreeAlloc (level, 0, NumNodes);
#else
    root = TreeAlloc (level, 0, __NumNodes);
#endif

#ifndef TORONTO
    CMMD_node_timer_stop(0);
#endif
    chatting("About to enter TreeAdd\n"); 
    
#ifndef PLAIN
    ClearAllStats();
#endif
#ifndef TORONTO
    CMMD_node_timer_start(1);
#endif
    result = TreeAdd (root);
#ifndef TORONTO
    CMMD_node_timer_stop(1);
#endif
    chatting("Received result of %d\n",result);

#ifndef TORONTO
    chatting("Alloc Time = %f seconds\n", CMMD_node_timer_elapsed(0));
    chatting("Add Time = %f seconds\n", CMMD_node_timer_elapsed(1));
#endif

#ifdef FUTURES
    __ShutDown();
#endif
    exit(0);


}

/* TreeAdd:
 */
int TreeAdd (t)
     register tree_t	*t;
{
  if (t == NULL)  {
    return 0;
  }
  else {
#ifdef FUTURES    
    future_cell_int leftval;
    int rightval;
    tree_t *tleft, *tright;
    int value;

    tleft = t->left;
    RPC(tleft, tleft,TreeAdd,&(leftval));
    NOTEST();
    tright = t->right;
    rightval = TreeAdd(tright);
    RTOUCH(&leftval);
    /*chatting("after touch @ 0x%x\n",t);*/
    value = t->val;
    /*chatting("returning from treeadd %d\n",*/
	     /*leftval.value + rightval.value + value);*/
    return leftval.value + rightval + value;
    RETEST();
#else
    int leftval;
    int rightval;
    tree_t *tleft, *tright;
    int value;

    tleft = t->left;            /* <---- 57% load penalty */
    leftval = TreeAdd(tleft);
    tright = t->right;          /* <---- 11.4% load penalty */
    rightval = TreeAdd(tright);
    /*chatting("after touch\n");*/
    value = t->val;             
    /*chatting("returning from treeadd %d\n",*/
	     /*leftval.value + rightval.value + value);*/
    return leftval + rightval + value;
#endif
  }
} /* end of TreeAdd */





