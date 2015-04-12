/* em3d.h - Header file for the electromagnetic problem in 3 dimensions
 *
 * By:  Martin C. Carlisle
 * Date: Feb. 23, 1994
 *
 */
#include "../include/assert.h"
#include "../include/stdio.h"
#include "../include/stdlib.h"
#include "../include/stdarg.h"
#include "../include/limits.h"
#include "../include/stddef.h"

#define NULL 0

#ifndef EM3D
#define EM3D

extern int n_nodes; /* number of nodes (E and H) */
extern int d_nodes; /* degree of nodes */
extern int iters;   /* number of iterations */

#define ALLOC malloc

#define DIST_SPAN 6

//#define assert(a) if (!a) {printf("Assertion failure\n"); exit(-1);}

typedef struct node_t {
  double value;
  struct node_t *next;
  struct node_t **to_nodes; /* array of nodes pointed to */
  struct node_t **from_nodes; /* array of nodes data comes from */
  double *coeffs; /* array of coeffs on edges */
  int from_count;
} node_t;

typedef struct graph_t {
  node_t *e_nodes;
  node_t *h_nodes;
} graph_t;

/* Perform 1 step for a nodelist */
void compute_nodes(node_t *nodelist);
#endif

/* initialize graph returns a structure with pointers to lists of e and h
 * nodes.
 */ 
graph_t initialize_graph();


#ifndef SS_PLAIN_H
#define SS_PLAIN_H

/* comment out this one, jqwu@princeton*/
#if 0
void * ssplain_malloc(int size);
void * ssplain_calloc(int nelems, int size);
void ssplain_alloc_stats();
#endif  

/* Convert MP shutdown to exit */

#define __ShutDown(ID)     { exit(ID); } 

/* modified by jqwu, the original one */
#if 0
#define __ShutDown(ID)     { ssplain_alloc_stats(); exit(ID); } 
#endif


/* All these CM-5 things are nops */
#define CMMD_node_timer_clear(ID)
#define CMMD_node_timer_start(ID)
#define CMMD_node_timer_stop(ID)
#define CMMD_node_timer_elapsed(ID)   ((double)0)

#define CMMD_self_address()   0

#define ClearAllStats()

/* define away the CM-5 allocator */


/* modified by jqwu@princeton */
#ifndef ALLOC
//#define ALLOC(NUM,ESIZE)  calloc (NUM+1,ESIZE)
#endif //ALLOC

#ifndef mymalloc
#define mymalloc  malloc
#endif //mymalloc





/* Get all of these multiprocessing things out of here. */
/* My id will stay that way */
#define IDMASK 0xffffffff

/* Nothing is getting tested */
#ifndef RETEST
#define RETEST()
#endif //RETEST

#ifndef NOTEST
#define NOTEST()
#endif //NOTEST

/* Everything is local */
#ifndef local
#define local            
#endif //local

#ifndef LOCAL
#define LOCAL(VAL)      (VAL)
#endif //LOCAL

#ifndef ISLOCPTR
#define ISLOCPTR(VAL)   (1)
#endif //ISLOCPTR

#ifndef MLOCAL
#define MLOCAL(VAL)
#endif //MLOCAL

/* An atomic increment is a normal increment */
#ifndef ATOMICINC
#define ATOMICINC(PVAL) (*(PVAL) = *(PVAL) + 1)
#endif //ATOMICINC

/* Nothing is migrating anywhere */
#ifndef MIGRATE
#define MIGRATE(ID)     
#endif //MIGRATE

#ifndef MIGRPH
#define MIGRPH()
#endif //MIGRPH

#ifndef UNPHASE
#define UNPHASE()
#endif //UNPHASE

#ifndef PID
#define PID(VAL)  (0)
#endif //PID

/* All these functions */
//void chatting(char *s, ...);
//void __Olden_panic(char *s, ...);

/* just define these guys, they are not going to change */
#define __NumNodes 1
#define __MyNodeId 0
#define __NDim     0

typedef struct ss_future_cell_int {
  int value;
} future_cell_int;

#define SS_RAND
/* Where are these things for real? */
#ifdef SS_RAND
long lrand48();
double drand48();
void srand48(long seed);
#endif //SS_RAND

#define MOD(V,M) ((V) & ((M) - 1))
#define INC_MOD(V,M) (V) = MOD((V) + 1, (M))

/* Prefetch instructions */

/* Use these for 1 lookahead prefetching */

#ifdef OVERHEAD_ONLY
#define ASSEMBLE_PREFETCH(ARG)
#define ASSEMBLE_PREFETCH_HEAD(ARG)
#else //OVERHEAD_ONLY

#define ASSEMBLE_PREFETCH(ARG) \
     asm ("lw $0, %0" : /* no outputs */ : "g" (ARG))
 
/* Use these for infinite lookahead prefetching */
#define ASSEMBLE_PREFETCH_HEAD(ARG) \
     asm ("lh $0, %0" : /* no outputs */ : "g" (ARG))

#endif //OVERHEAD_ONLY

#endif //SS_PLAIN_H



/* util.h
 *
 * headers for randomizing utilities 
 *
 * By: Martin C. Carlisle
 * Date: Feb 23, 1994
 *
 */

/* initialize the random number generator for a particular processor */
void init_random(int myid);

/* return a random number from 0 to range-1 */
int gen_number(int range);

/* return a random number in [-range+1,range-1] */
int gen_signed_number(int range);

/* Generate a double from 0.0 to 1.0 */
double gen_uniform_double();

/* Return 1, percent percent of the time and 0 otherwise */
int check_percent(int percent);
