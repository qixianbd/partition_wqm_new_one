#include "em3d.h"

void compute_nodes(node_t * nodelist)
{
    int i;

    for (; nodelist; nodelist = nodelist->next)
	for (i = 0; i < nodelist->from_count; i++) {	/* bad load */
	    node_t *other_node = nodelist->from_nodes[i];	/* bad load */
	    double coeff = nodelist->coeffs[i];	/* bad load */
	    double value = other_node->value;	/* bad load: 50% */

	    nodelist->value -= coeff * value;
	}
}

#define CONST_seed 45

/* initialize the random number generator for a particular processor */
void init_random(int myid)
{
    srand48(myid * CONST_seed);
}

/* return a random number from 0 to range-1 */
int gen_number(int range)
{
    return lrand48() % range;
}

/* return a random number in [-range+1,range-1] */
int gen_signed_number(int range)
{
    int temp;

    temp = lrand48() % (2 * range - 1);	/* 0..2*range-2 */
    return temp - (range - 1);
}

/* Generate a double from 0.0 to 1.0 */
double gen_uniform_double()
{
    return drand48();
}

int check_percent(int percent)
{
    return (drand48() < (double) (percent / 100.0));
}



/*
void chatting(char *s, ...)
{
  va_list ap;
  va_start(ap,s);
  vfprintf(stderr, s, ap);
  va_end(ap);
}

void __Olden_panic(char *s, ...)
{
  va_list ap;
  va_start(ap,s);
  vfprintf(stderr, s, ap);
  va_end(ap);
  exit(-1);
}
*/
#ifdef SS_RAND
double drand48()
{
    double d;
    //d = (double) rand() / LONG_MAX;
    d = (double) rand() / RAND_MAX;
    return d;
}


long lrand48()
{
    long l = rand();
    return l;
}

void srand48(long seed)
{
    srand(seed);
}
#endif				//SS_RAND



/* comment this out by jqwu@princeton */
#if 0
static unsigned long bytes_allocated = 0;
static unsigned long allocations = 0;

void *ssplain_malloc(int size)
{
    allocations++;
    bytes_allocated += size;
    return malloc(size);
}

void *ssplain_calloc(int nelems, int size)
{
    void *p;
    allocations++;
    bytes_allocated += nelems * size;
    p = calloc(nelems, size);
    assert(p);
    return p;
}

void ssplain_alloc_stats()
{
    chatting("Allocation stats: %d bytes allocated in %d allocations\n",
	     bytes_allocated, allocations);
}


#endif


/* make_graph.c - Create a graph to be solved for the electromagnetic
 *                problem in 3 dimensions.
 *
 * By:  Martin C. Carlisle
 * Date: Feb 23, 1994
 *
 */


#define NUM_H_NODES  n_nodes
#define H_NODE_DEGREE d_nodes

#define NUM_E_NODES  n_nodes
#define E_NODE_DEGREE d_nodes

int n_nodes;
int d_nodes;

node_t **make_table(int size)
{
    node_t **retval;

    retval = (node_t **) malloc(size * sizeof(node_t *));
    //assert(retval);
    return retval;
}

void fill_table(node_t ** table, int size)
{
    int i;

    /* Now we fill the table with allocated nodes */
    for (i = 0; i < size; i++) {
	table[i] = (node_t *) malloc(sizeof(node_t));
	table[i]->value = gen_uniform_double();
	table[i]->from_count = 0;

	if (i > 0)
	    table[i - 1]->next = table[i];
    }
    table[size - 1]->next = NULL;
}

void make_neighbors(node_t * nodelist, node_t ** table, int tablesz,
		    int degree)
{
    node_t *cur_node;

    for (cur_node = nodelist; cur_node; cur_node = cur_node->next) {
	node_t *other_node;
	int j, k;

	cur_node->to_nodes =
	    (node_t **) malloc(degree * (sizeof(node_t *)));
	for (j = 0; j < degree; j++) {
	    /* Make sure no duplicates are generated */
	    do {
		other_node = table[gen_number(tablesz)];
		for (k = 0; k < j; k++)
		    if (other_node == cur_node->to_nodes[k])
			break;
	    }
	    while (k < j);
	    cur_node->to_nodes[j] = other_node;
	    other_node->from_count++;	/* bad load: 50% */
	}
    }
}

void update_from_coeffs(node_t * nodelist)
{
    node_t *cur_node;

    /* Setup coefficient and from_nodes vectors for h nodes */
    for (cur_node = nodelist; cur_node; cur_node = cur_node->next) {
	int from_count = cur_node->from_count;
	int k;

	cur_node->from_nodes =
	    (node_t **) malloc(from_count * sizeof(node_t *));
	cur_node->coeffs = (double *) malloc(from_count * sizeof(double));
	for (k = 0; k < from_count; k++)
	    cur_node->coeffs[k] = gen_uniform_double();

	cur_node->from_count = 0;
    }
}

void fill_from_fields(node_t * nodelist, int degree)
{
    node_t *cur_node;
    for (cur_node = nodelist; cur_node; cur_node = cur_node->next) {
	int j;

	for (j = 0; j < degree; j++) {
	    node_t *other_node = cur_node->to_nodes[j];
	    other_node->from_nodes[other_node->from_count] = cur_node;
	    other_node->from_count++;
	}
    }
}

graph_t initialize_graph()
{
    node_t **h_table;
    node_t **e_table;
    graph_t retval;

    printf("initializing graph ...\n");
    /* We start by creating a table of pointers to the h nodes */
    h_table = make_table(NUM_H_NODES);
    fill_table(h_table, NUM_H_NODES);

    /* We repeat the same for the e nodes */
    e_table = make_table(NUM_E_NODES);
    fill_table(e_table, NUM_E_NODES);

    /* At this point, for each h node, we give it the appropriate number
       of neighbors as defined by the degree */
    make_neighbors(h_table[0], e_table, NUM_E_NODES, H_NODE_DEGREE);
    make_neighbors(e_table[0], h_table, NUM_H_NODES, E_NODE_DEGREE);

    /* We now create from count and initialize coefficients */
    update_from_coeffs(h_table[0]);
    update_from_coeffs(e_table[0]);

    /* Fill the from fields in the nodes */
    fill_from_fields(h_table[0], H_NODE_DEGREE);
    fill_from_fields(e_table[0], E_NODE_DEGREE);

    retval.e_nodes = e_table[0];
    retval.h_nodes = h_table[0];

    free(h_table);
    free(e_table);

    return retval;
}



void dealwithargs(int argc, char *argv[])
{
    printf("dealwithargs ...\n");
    if (argc > 1){
	//n_nodes = atoi(argv[1]);
    }else{
	n_nodes = 10;
    }

    if (argc > 2){
	//d_nodes = atoi(argv[2]);
    }else{
	d_nodes = 3;
    }

    if (argc > 3){
	//iters = atoi(argv[3]);
    }else{
	iters = 30;
    }
}

extern void dealwithargs(int argc, char *argv[]);
//#define chatting(A)

void print_graph(graph_t graph)
{
    node_t *cur_node;
    cur_node = graph.e_nodes;
    printf("print graph ...\n");
    for (; cur_node; cur_node = cur_node->next) {
	printf("E: value %f, from_count %d\n", cur_node->value,
	       cur_node->from_count);
    }
    cur_node = graph.h_nodes;
    for (; cur_node; cur_node = cur_node->next) {
	printf("H: value %f, from_count %d\n", cur_node->value,
	       cur_node->from_count);
    }
}

int iters;

int main(int argc, char *argv[])
{
    int i;
    graph_t graph;

    dealwithargs(argc, argv);
    graph = initialize_graph();
    print_graph(graph);

    for (i = 0; i < iters; i++) {
	compute_nodes(graph.e_nodes);
	compute_nodes(graph.h_nodes);
	printf("Completed a computation phase: %d\n", i);
	print_graph(graph);
    }
}

