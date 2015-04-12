/* For copyright information, see olden_v1.0/COPYRIGHT */



typedef struct hash_entry {
  unsigned int key;
  void *entry;
  struct hash_entry *next;
#ifdef JUMP
  struct hash_entry *pf_ptr;
#endif
} *HashEntry;

typedef struct hash {
  HashEntry *array;
  int (*mapfunc)(unsigned int);
  int size;
} *Hash;

Hash MakeHash(int size, int (*map)(unsigned int));
void *HashLookup(unsigned int key, Hash hash);
void HashInsert(void *entry,unsigned int key, Hash hash);
void HashDelete(unsigned int key, Hash hash);


/* For copyright information, see olden_v1.0/COPYRIGHT */

#ifdef TORONTO
#define MAXPROC 1
#else
#define MAXPROC 32
#endif

#ifdef TORONTO
#define chatting printf
#define ALLOC(p, sz) malloc(sz)
#define PLAIN
extern int NumNodes;
#endif

#ifdef FUTURES
#include "future-cell.h"
#endif
#ifndef TORONTO
#include "mem-ref.h"
#endif
#ifdef PLAIN
#define MLOCAL(ptr)
#endif

#ifdef TORONTO
typedef struct vert_st {
  int mindist;
  struct vert_st *next;
  Hash edgehash;
  } *Vertex;
#else
typedef struct vert_st {
  int mindist;
  struct vert_st *next {99};
  Hash edgehash;
  } *Vertex;
#endif

typedef struct graph_st {
  Vertex vlist[MAXPROC];
  } *Graph;

Graph MakeGraph(int numvert, int numproc);








