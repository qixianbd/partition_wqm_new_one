#include "../include/stdio.h"
#include "../include/stdlib.h"



typedef struct hash_entry {
  unsigned int key;
  void *entry;
  struct hash_entry *next;



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
# 38 "mst.h"
extern int NumNodes;
# 52 "mst.h"
typedef struct vert_st {
  int mindist;
  struct vert_st *next;
  Hash edgehash;
  } *Vertex;
# 65 "mst.h"
typedef struct graph_st {
  Vertex vlist[1];
  } *Graph;

Graph MakeGraph(int numvert, int numproc);
# 13 "mst.c" 2







int NumNodes;
# 35 "mst.c"
int dealwithargs(int argc, char *argv[])
{
  int level;


  if (argc > 2){

  }else{
    NumNodes = 1;
  }
# 53 "mst.c"
  if (argc > 1){

  }else{
    level = 8;
  }

  return level;
}
# 71 "mst.c"
static int remaining = 0;
static char *temp;

static char *localmalloc(int size)
{
  char *blah;

  if (size>remaining)
    {
      temp = (char *) malloc(32768);
      if (!temp) printf("Error! malloc returns null\n");
      remaining = 32768;
    }
  blah = temp;
  temp += size;
  remaining -= size;
  return blah;
}



Hash MakeHash(int size, int (*map)(unsigned int))
{
  Hash retval;
  int i;

  retval = (Hash) localmalloc(sizeof(*retval));
  retval->array = (HashEntry *) localmalloc(size*sizeof(HashEntry));
  for (i=0; i<size; i++)
    retval->array[i]=0;
  retval->mapfunc = map;
  retval->size = size;

  return retval;
}

void *HashLookup(unsigned int key, Hash hash)
{
  int j;
  HashEntry ent;

  j = (hash->mapfunc)(key);
  ;

  ;
  for (ent = hash->array[j];
       ent &&
           ent->key!=key;
       ent=ent->next);
  if (ent) return ent->entry;
  return 0;
}

void HashInsert(void *entry,unsigned int key,Hash hash)
{
  HashEntry ent;
  int j;

  ;

  j = (hash->mapfunc)(key);
  ent = (HashEntry) localmalloc(sizeof(*ent));
  ent->next = hash->array[j];
  hash->array[j]=ent;
  ent->key = key;
  ent->entry = entry;
}

void HashDelete(unsigned int key,Hash hash)
{
  HashEntry *ent;
  HashEntry tmp;
  int j;

  j = (hash->mapfunc)(key);
  for (ent=&(hash->array[j]); (*ent) && (*ent)->key!=key; ent=&((*ent)->next));
  ;
  tmp = *ent;
  *ent = (*ent)->next;
  ;
}
# 160 "mst.c"
static int HashRange;

static int mult(int p, int q)
{
   int p1, p0, q1, q0;

   p1=p/10000; p0=p%10000;
   q1=q/10000; q0=q%10000;
   return (((p0*q1+p1*q0) % 10000)*10000 +p0*q0);
}

static int mst_random(int seed)
{
  int tmp;

  srand(seed);
  tmp = rand();
  return tmp;
}

static int compute_dist(int i,int j, int numvert)
{
  int less, gt;
  int p1, p0, q1, q0;
  int seed;
  int tmp;
  if (i<j) {less = i; gt = j;} else {less = j; gt = i;}
  seed = (less*numvert+gt);
  p1=seed/10000; p0=seed%10000;
  q1=31415821/10000; q0=31415821%10000;
  tmp = (((p0*q1+p1*q0) % 10000)*10000 +p0*q0) + 1;
  return tmp%2048 +1;
}

static int hashfunc(unsigned int key)
{


    return ((key>>3) % HashRange);



}

static void AddEdges(int count1, Graph retval, int numproc,
                     int perproc, int numvert, int j)
{
  Vertex tmp;
  Vertex helper[1];
  int i;

  for (i=0; i<numproc; i++) {
    helper[i] = retval->vlist[i];
  }

  for (tmp = retval->vlist[j]; tmp; tmp=tmp->next)
    {
      for (i=0; i<numproc*perproc; i++)
        {
          int pn,offset,dist;
          Vertex dest;
          Hash hash;

          if (i!=count1)
            {
              dist = compute_dist(i,count1,numvert);
              pn = i/perproc;
              offset = i % perproc;
              dest = ((helper[pn])+offset);
              hash = tmp->edgehash;
              HashInsert((void *) dist,(unsigned int) dest,hash);
            }
        }
      count1++;
    }
}

Graph MakeGraph(int numvert, int numproc)
{
  int perproc = numvert/numproc;
  int i,j;
  int count1;
  Vertex v,tmp;
  Vertex block;
  Graph retval;



  retval = (Graph) malloc(sizeof(*retval));
  for (i=0; i<1; i++)
    {
      retval->vlist[i]=0;
    }
  printf("Make phase 2\n");
  for (j=numproc-1; j>=0; j--)
  {
      block = (Vertex) malloc(perproc*(sizeof(*tmp)));
      v = 0;
      for (i=0; i<perproc; i++)
      {

   tmp = block+(perproc-i-1);
          HashRange = numvert/4;
          tmp->mindist = 9999999;
          tmp->edgehash = MakeHash(numvert/4,hashfunc);
          tmp->next = v;
          v=tmp;
      }

      retval->vlist[j] = v;
    }

  printf("Make phase 3\n");
  for (j=numproc-1; j>=0; j--)
    {
      count1 = j*perproc;


      AddEdges(count1, retval, numproc, perproc, numvert, j);



    }
  printf("Make phase 4\n");







  printf("Make returning\n");
  return retval;
}
# 304 "mst.c"
typedef struct blue_return {
  Vertex vert;
  int dist;
} BlueReturn;


typedef struct fc_br {



  BlueReturn value;
} future_cell_BlueReturn;


static BlueReturn BlueRule(Vertex inserted, Vertex vlist)
{
  BlueReturn retval;
  Vertex tmp,prev;
  Hash hash;
  int dist,dist2;
  int count;

  if (!vlist) {
    retval.dist = 999999;
    return retval;
  }
  ;
  prev = vlist;
  retval.vert = vlist;
  retval.dist = vlist->mindist;
  hash = vlist->edgehash;
  dist = (int) HashLookup((unsigned int) inserted, hash);

  if (dist)
    {
      if (dist<retval.dist)
        {
          vlist->mindist = dist;
          retval.dist = dist;
        }
    }
  else printf("Not found\n");

  count = 0;

  for (tmp=vlist->next; tmp; prev=tmp,tmp=tmp->next)
    {
      count++;
      if (tmp==inserted)
        {
          Vertex next;

          next = tmp->next;
          prev->next = next;
        }
      else
        {
          hash = tmp->edgehash;
          dist2 = tmp->mindist;
          dist = (int) HashLookup((unsigned int) inserted, hash);

          if (dist)
            {
              if (dist<dist2)
                {
                  tmp->mindist = dist;
                  dist2 = dist;
                }
            }
          else printf("Not found\n");
          if (dist2<retval.dist)
            {
              retval.vert = tmp;
              retval.dist = dist2;
            }
        }
    }

  return retval;
}



static Vertex MyVertexList = 0;

static void SetMyVertexList(Vertex v) {
  MyVertexList = v;
}

static BlueReturn Do_all_BlueRule(Vertex inserted, int nproc, int pn) {
  future_cell_BlueReturn fcleft;
  BlueReturn retright;

  if (nproc > 1) {
# 406 "mst.c"
     fcleft.value = Do_all_BlueRule(inserted,nproc/2,pn+nproc/2);
     retright = Do_all_BlueRule(inserted,nproc/2,pn);


     if (fcleft.value.dist < retright.dist) {
       retright.dist = fcleft.value.dist;
       retright.vert = fcleft.value.vert;
       }
     return retright;
  }
  else {
     if (inserted && inserted == MyVertexList)
       MyVertexList = MyVertexList->next;
     return BlueRule(inserted,MyVertexList);
  }
}

static int ComputeMst(Graph graph,int numproc,int numvert)
{
  Vertex v;
  Vertex inserted,tmp;
  int cost=0,i,dist;





  printf("Compute phase 1\n");
# 447 "mst.c"
  inserted = graph->vlist[0];
  tmp = inserted->next;
  graph->vlist[0] = tmp;
  MyVertexList = tmp;
  numvert--;


  printf("Compute phase 2\n");
  while (numvert)
    {
      BlueReturn br;

      br = Do_all_BlueRule(inserted,numproc,0);
      inserted = br.vert;
      dist = br.dist;
      numvert--;
      cost = cost+dist;
    }
  return cost;
}

int main(int argc, char *argv[])
{
  Graph graph;
  int dist;
  int size;
# 482 "mst.c"
  size = dealwithargs(argc,argv);
  printf("Making graph of size %d\n",size);


  graph = MakeGraph(size,NumNodes);



  printf("Graph completed\n");







  printf("About to compute mst \n");


  dist = ComputeMst(graph,NumNodes,size);
# 510 "mst.c"
  printf("MST has cost %d\n",dist);
# 519 "mst.c"
  exit(0);
}
