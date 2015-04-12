# 1 "voronoi.c"
# 1 "<built-in>"
# 1 "<命令行>"
# 1 "voronoi.c"
# 12 "voronoi.c"
# 1 "voronoi.h" 1
#include "../include/stdio.h"
#include "../include/stdlib.h"

int get_points_called_times = 0;

extern double sqrt();
extern double exp();
extern double log();
# 34 "voronoi.h"
struct edge_rec {
    struct VERTEX *v;
    struct edge_rec *next;
    int wasseen;
    int more_data;
};

struct get_point {
    struct VERTEX *v;
    double curmax;
    int seed;
};


typedef struct edge_rec *EDGE_PTR;
typedef struct VERTEX *VERTEX_PTR;
typedef EDGE_PTR QUAD_EDGE;





struct VEC2 {
    double x, y;
    double norm;
};

struct VERTEX {
    struct VEC2 v;
    struct VERTEX *left, *right;
};

typedef struct {
    QUAD_EDGE left, right;
} EDGE_PAIR;
# 127 "voronoi.h"
struct EDGE_STACK {
    int ptr;
    QUAD_EDGE *elts;
    int stack_size;
};

extern QUAD_EDGE alloc_edge();
extern QUAD_EDGE makeedge();
extern splice();
extern swapedge();
extern deleteedge();
extern QUAD_EDGE build_delaunay_triangulation();
extern EDGE_PAIR build_delaunay();
extern EDGE_PAIR do_merge();
extern QUAD_EDGE connect_left();
extern QUAD_EDGE connect_right();

extern zero_seen();
extern QUAD_EDGE pop_edge();
# 155 "voronoi.h"
VERTEX_PTR *vp;
struct VERTEX *va;
EDGE_PTR *next;
VERTEX_PTR *org;
int num_vertices, num_edgeparts, stack_size;
int to_lincoln, to_off, to_3d_out, to_color, voronoi, delaunay,
    interactive, ahost;
char *see;

int NumNodes, NDim;
# 13 "voronoi.c" 2


extern int NumNodes, NDim;





extern int flag;
# 33 "voronoi.c"
int mylog(int num)
{
    int j = 0, k = 1;

    while (k < num) {
	k *= 2;
	j++;
    }
    return j;
}

int dealwithargs(int argc, char *argv[])
{
    int size;

    if (argc > 3) {
	//flag = atoi(argv[3]);
    } else {
	flag = 0;
    }

    if (argc > 2) {
	//NumNodes = atoi(argv[2]);
    } else {
	NumNodes = 1;
    }






    if (argc > 1) {
	//size = atoi(argv[1]);
    } else {
	size = 128;
    }

    NDim = mylog(NumNodes);
    printf("Voronoi with %d size on %d procs of dim %d\n", size, NumNodes,
	   NDim);






    return size;

}

# 91 "voronoi.c"
double V2_cprod(u, v)
struct VEC2 u, v;
{
    return (u.x * v.y - u.y * v.x);
}




double V2_dot(u, v)
struct VEC2 u, v;
{
    return (u.x * v.x + u.y * v.y);
}



struct VEC2 V2_times(c, v)
double c;
struct VEC2 v;
{
    struct VEC2 ans;
    ans.x = c * v.x;
    ans.y = c * v.y;
    return (ans);
}



struct VEC2 V2_sum(u, v)
struct VEC2 u, v;
{
    struct VEC2 ans;

    ans.x = u.x + v.x;
    ans.y = u.y + v.y;
    return (ans);
}

struct VEC2 V2_sub(u, v)
struct VEC2 u, v;
{
    struct VEC2 ans;
    ans.x = u.x - v.x;
    ans.y = u.y - v.y;
    return (ans);
}



double V2_magn(u)
struct VEC2 u;
{
    return (sqrt(u.x * u.x + u.y * u.y));
}



struct VEC2 V2_cross(v)
struct VEC2 v;
{
    struct VEC2 ans;
    ans.x = v.y;
    ans.y = -v.x;
    return (ans);
}







extern struct VEC2 V2_sum();
extern struct VEC2 V2_sub();
extern struct VEC2 V2_times();
extern double V2_cprod();
extern struct VEC2 V2_cross();
extern double V2_dot();
extern double V2_magn();





plot_dedge(p1, p2)
VERTEX_PTR p1, p2;
{
    double x1, x2, y1, y2;

    x1 = p1->v.x;
    y1 = p1->v.y;
    x2 = p2->v.x;
    y2 = p2->v.y;

    printf("Dedge %f %f ", (double) x1, (double) y1);
    printf("%f %f\n", (double) x2, (double) y2);
}

plot_vedge(p1, p2)
struct VEC2 p1, p2;
{

    printf("Vedge %f %f ", (double) p1.x, (double) p1.y);
    printf("%f %f\n", (double) p2.x, (double) p2.y);
}

struct VEC2 circle_center(a, b, c)
struct VEC2 a, b, c;
{
    struct VEC2 p;
    double d1, d2, d3, d4;
    struct VEC2 vv1, vv2, vv3, vv4, vv5, vv6, vv7;
    vv1 = V2_sub(b, c);
    d1 = V2_magn(vv1);
    vv1 = V2_sum(a, b);
    vv2 = V2_times(0.5, vv1);
    if (d1 < 0.0)
	return (vv2);
    else {
	vv3 = V2_sub(b, a);
	vv4 = V2_sub(c, a);
	d3 = V2_cprod(vv3, vv4);
	d2 = -2.0 * d3;
	vv5 = V2_sub(c, b);
	d4 = V2_dot(vv5, vv4);
	vv6 = V2_cross(vv3);
	vv7 = V2_times(d4 / d2, vv6);
	p = V2_sum(vv2, vv7);
	return (p);
    }
}

int *earray;

output_voronoi_diagram(edge, nv, my_stack)
QUAD_EDGE edge;
int nv;
struct EDGE_STACK *my_stack;
{
    QUAD_EDGE nex, prev, snex, sprev;
    struct VEC2 cvxvec, center;
    double ln;

    int icon;
    QUAD_EDGE ce, dp;
    char command[127];
    double d1;
    struct VEC2 vv1, vv2, vv3;
    int ne;

    if (voronoi) {
	zero_seen(my_stack, edge);
	nex = edge;

	do {
	    struct VEC2 v21, v22, v23;
	    QUAD_EDGE tmp;

	    v21 = (((QUAD_EDGE)
		    (((unsigned int) (nex)) ^ 2 *
		     sizeof(struct edge_rec))))->v->v;
	    v22 = (nex)->v->v;
	    tmp = (nex)->next;
	    v23 = (((QUAD_EDGE)
		    (((unsigned int) (tmp)) ^ 2 *
		     sizeof(struct edge_rec))))->v->v;
	    cvxvec = V2_sub(v21, v22);
	    center = circle_center(v22, v21, v23);
	    vv1 = V2_sum(v22, v21);
	    vv2 = V2_times(0.5, vv1);
	    vv3 = V2_sub(center, vv2);
	    ln = 1.0 + V2_magn(vv3);
	    d1 = ln / V2_magn(cvxvec);
	    vv1 = V2_cross(cvxvec);
	    vv2 = V2_times(d1, vv1);
	    vv3 = V2_sum(center, vv2);
	    plot_vedge(center, vv3);
	    nex = ((QUAD_EDGE)
		   ((((unsigned int) ((((QUAD_EDGE)
					((((unsigned int) (nex) +
					   1 *
					   sizeof(struct edge_rec)) & (4 *
								       sizeof
								       (struct
									edge_rec)
								       -
								       1))
					 | ((unsigned int)
					    (nex) & ~(4 *
						      sizeof(struct
							     edge_rec)
						      - 1)))))->next) +
		      3 * sizeof(struct edge_rec)) & (4 *
						      sizeof(struct
							     edge_rec) -
						      1)) | ((unsigned
							      int) ((((QUAD_EDGE)
								      ((((unsigned int)
									 (nex) + 1 * sizeof(struct edge_rec))
									&
									(4
									 *
									 sizeof
									 (struct
									  edge_rec)
									 -
									 1))
								       |
								       ((unsigned int) (nex)
									&
									~(4
									  *
									  sizeof
									  (struct
									   edge_rec)
									  -
									  1)))))->next)
							     & ~(4 *
								 sizeof
								 (struct
								  edge_rec)
								 - 1))));
	}
	while (nex != edge);
    }



    my_stack->ptr = 0;
    push_ring(my_stack, edge);
    printf("mystack_ptr = %d\n", my_stack->ptr);
    while (my_stack->ptr != 0) {
	VERTEX_PTR v1, v2, v3, v4;
	double d1, d2;


	edge = pop_edge(my_stack);
	if ((edge)->wasseen == 1) {
	    {
		prev = edge;
		nex = (edge)->next;
		do {
		    v1 = (prev)->v;
		    d1 = v1->v.x;
		    v2 = (((QUAD_EDGE)
			   (((unsigned int) (prev)) ^ 2 *
			    sizeof(struct edge_rec))))->v;
		    d2 = v2->v.x;
		    if (d1 >= d2) {

			plot_dedge(v1, v2);
			sprev = ((QUAD_EDGE)
				 (((unsigned int) (prev)) ^ 2 *
				  sizeof(struct edge_rec)));
			snex = (sprev)->next;
			v1 = (prev)->v;
			v2 = (((QUAD_EDGE)
			       (((unsigned int) (prev)) ^ 2 *
				sizeof(struct edge_rec))))->v;
			v3 = (((QUAD_EDGE)
			       (((unsigned int) (nex)) ^ 2 *
				sizeof(struct edge_rec))))->v;
			v4 = (((QUAD_EDGE)
			       (((unsigned int) (snex)) ^ 2 *
				sizeof(struct edge_rec))))->v;
			if (ccw(v1, v2, v3) != ccw(v1, v2, v4)) {
			    struct VEC2 v21, v22, v23;
			    v21 = (prev)->v->v;
			    v22 = (((QUAD_EDGE)
				    (((unsigned int) (prev)) ^ 2 *
				     sizeof(struct edge_rec))))->v->v;
			    v23 = (((QUAD_EDGE)
				    (((unsigned int) (nex)) ^ 2 *
				     sizeof(struct edge_rec))))->v->v;
			    vv1 = circle_center(v21, v22, v23);
			    v21 = (sprev)->v->v;
			    v22 = (((QUAD_EDGE)
				    (((unsigned int) (sprev)) ^ 2 *
				     sizeof(struct edge_rec))))->v->v;
			    v23 = (((QUAD_EDGE)
				    (((unsigned int) (snex)) ^ 2 *
				     sizeof(struct edge_rec))))->v->v;
			    vv2 = circle_center(v21, v22, v23);
			    plot_vedge(vv1, vv2);
			}
		    }
		    (prev)->wasseen = 2;
		    prev = nex;
		    nex = (nex)->next;
		}
		while (prev != edge);
	    }
	}
	push_ring(my_stack, ((QUAD_EDGE)
			     (((unsigned int) (edge)) ^ 2 *
			      sizeof(struct edge_rec))));
    }
    zero_seen(my_stack, edge);
}

# 339 "voronoi.c"
int flag;

QUAD_EDGE connect_left(a, b)
QUAD_EDGE a, b;
{
    VERTEX_PTR t1, t2;
    register QUAD_EDGE ans, lnexta;


    t1 = (((QUAD_EDGE)
	   (((unsigned int) (a)) ^ 2 * sizeof(struct edge_rec))))->v;
    ;
    lnexta = ((QUAD_EDGE)
	      ((((unsigned int) ((((QUAD_EDGE)
				   ((((unsigned int) (a) +
				      3 * sizeof(struct edge_rec)) & (4 *
								      sizeof
								      (struct
								       edge_rec)
								      -
								      1)) |
				    ((unsigned int) (a)
				     & ~(4 * sizeof(struct edge_rec)
					 -
					 1)))))->next) +
		 1 * sizeof(struct edge_rec)) & (4 *
						 sizeof(struct edge_rec) -
						 1)) | ((unsigned
							 int) ((((QUAD_EDGE)
								 ((((unsigned int) (a)
								    +
								    3 *
								    sizeof
								    (struct
								     edge_rec))
								   & (4 *
								      sizeof
								      (struct
								       edge_rec)
								      -
								      1)) |
								  ((unsigned int) (a)
								   & ~(4 *
								       sizeof
								       (struct
									edge_rec)
								       -
								       1)))))->next)
							& ~(4 *
							    sizeof(struct
								   edge_rec)
							    - 1))));
    ;
    t2 = (b)->v;
    ans = makeedge(t1, t2);
    splice(ans, lnexta);
    splice(((QUAD_EDGE)
	    (((unsigned int) (ans)) ^ 2 * sizeof(struct edge_rec))), b);

    return (ans);
}

QUAD_EDGE connect_right(a, b)
QUAD_EDGE a, b;
{
    VERTEX_PTR t1, t2;
    register QUAD_EDGE ans, oprevb;
    QUAD_EDGE q1;


    t1 = (((QUAD_EDGE)
	   (((unsigned int) (a)) ^ 2 * sizeof(struct edge_rec))))->v;
    t2 = (b)->v;
    ;
    oprevb = ((QUAD_EDGE)
	      ((((unsigned int) ((((QUAD_EDGE)
				   ((((unsigned int) (b) +
				      1 * sizeof(struct edge_rec)) & (4 *
								      sizeof
								      (struct
								       edge_rec)
								      -
								      1)) |
				    ((unsigned int) (b)
				     & ~(4 * sizeof(struct edge_rec)
					 -
					 1)))))->next) +
		 1 * sizeof(struct edge_rec)) & (4 *
						 sizeof(struct edge_rec) -
						 1)) | ((unsigned
							 int) ((((QUAD_EDGE)
								 ((((unsigned int) (b)
								    +
								    1 *
								    sizeof
								    (struct
								     edge_rec))
								   & (4 *
								      sizeof
								      (struct
								       edge_rec)
								      -
								      1)) |
								  ((unsigned int) (b)
								   & ~(4 *
								       sizeof
								       (struct
									edge_rec)
								       -
								       1)))))->next)
							& ~(4 *
							    sizeof(struct
								   edge_rec)
							    - 1))));
    ;
    ans = makeedge(t1, t2);
    splice(ans, ((QUAD_EDGE)
		 (((unsigned int) (a)) ^ 2 * sizeof(struct edge_rec))));
    splice(((QUAD_EDGE)
	    (((unsigned int) (ans)) ^ 2 * sizeof(struct edge_rec))),
	   oprevb);

    return (ans);
}

deleteedge(e)
QUAD_EDGE e;
{
    QUAD_EDGE f;

    f = ((QUAD_EDGE)
	 ((((unsigned int) ((((QUAD_EDGE)
			      ((((unsigned int) (e) +
				 1 * sizeof(struct edge_rec)) & (4 *
								 sizeof
								 (struct
								  edge_rec)
								 -
								 1)) |
			       ((unsigned int) (e)
				& ~(4 * sizeof(struct edge_rec)
				    -
				    1)))))->next) +
	    1 * sizeof(struct edge_rec)) & (4 * sizeof(struct edge_rec) -
					    1)) | ((unsigned
						    int) ((((QUAD_EDGE)
							    ((((unsigned
								int) (e)
							       +
							       1 *
							       sizeof
							       (struct
								edge_rec))
							      & (4 *
								 sizeof
								 (struct
								  edge_rec)
								 -
								 1)) |
							     ((unsigned
							       int) (e)
							      & ~(4 *
								  sizeof
								  (struct
								   edge_rec)
								  -
								  1)))))->next)
						   & ~(4 *
						       sizeof(struct
							      edge_rec) -
						       1))));
    splice(e, f);
    ;
    f = ((QUAD_EDGE)
	 ((((unsigned int) ((((QUAD_EDGE)
			      ((((unsigned int) (((QUAD_EDGE)
						  (((unsigned int) (e)) ^ 2
						   *
						   sizeof(struct
							  edge_rec)))) +
				 1 * sizeof(struct edge_rec)) & (4 *
								 sizeof
								 (struct
								  edge_rec)
								 -
								 1)) |
			       ((unsigned
				 int) (((QUAD_EDGE)
					(((unsigned int) (e)) ^ 2 *
					 sizeof(struct edge_rec)))) & ~(4 *
									sizeof
									(struct
									 edge_rec)
									-
									1)))))->
			    next) +
	    1 * sizeof(struct edge_rec)) & (4 * sizeof(struct edge_rec) -
					    1)) | ((unsigned
						    int) ((((QUAD_EDGE)
							    ((((unsigned
								int) (((QUAD_EDGE) (((unsigned int) (e)) ^ 2 * sizeof(struct edge_rec)))) + 1 * sizeof(struct edge_rec)) & (4 * sizeof(struct edge_rec) - 1)) | ((unsigned int) (((QUAD_EDGE) (((unsigned int) (e)) ^ 2 * sizeof(struct edge_rec)))) & ~(4 * sizeof(struct edge_rec) - 1)))))->next) & ~(4 * sizeof(struct edge_rec) - 1))));
    splice(((QUAD_EDGE)
	    (((unsigned int) (e)) ^ 2 * sizeof(struct edge_rec))), f);
    ;
    free_edge(e);

}

# 408 "voronoi.c"
QUAD_EDGE build_delaunay_triangulation(tree, extra)
VERTEX_PTR tree, extra;
{
    EDGE_PAIR retval;

    retval = build_delaunay(tree, extra);
    return retval.left;
}

VERTEX_PTR get_low(tree)
register VERTEX_PTR tree;
{
    register VERTEX_PTR temp;
    while (temp = tree->left)
	tree = temp;
    return tree;
}






EDGE_PAIR build_delaunay(tree, extra)
VERTEX_PTR tree, extra;
{
    QUAD_EDGE a, b, c, ldo, rdi, ldi, rdo;
    EDGE_PAIR retval;
    register VERTEX_PTR maxx, minx;
    VERTEX_PTR s1, s2, s3;





    EDGE_PAIR delleft, delright;


    if (tree && tree->right) {

	minx = get_low(tree);
	maxx = extra;
# 464 "voronoi.c"
	delright = build_delaunay(tree->right, extra);
	delleft = build_delaunay(tree->left, tree);
	ldo = delleft.left;
	ldi = delleft.right;
	rdi = delright.left;
	rdo = delright.right;

	retval = do_merge(ldo, ldi, rdi, rdo);
	ldo = retval.left;
	rdo = retval.right;
	while ((ldo)->v != minx) {;
	    ldo = (((QUAD_EDGE)
		    (((unsigned int) (ldo)) ^ 2 *
		     sizeof(struct edge_rec))))->next;;
	}
	while ((rdo)->v != maxx) {;
	    rdo = ((QUAD_EDGE)
		   (((unsigned int) ((rdo)->next)) ^ 2 *
		    sizeof(struct edge_rec)));;
	}
	retval.left = ldo;
	retval.right = rdo;
    } else if (!tree) {
	printf("ERROR: Only 1 point!\n");
	exit(-1);
    } else if (!tree->left) {
	a = makeedge(tree, extra);
	retval.left = a;
	retval.right =
	    ((QUAD_EDGE)
	     (((unsigned int) (a)) ^ 2 * sizeof(struct edge_rec)));
    } else {

	s1 = tree->left;
	s2 = tree;
	s3 = extra;
	a = makeedge(s1, s2);
	b = makeedge(s2, s3);
	splice(((QUAD_EDGE)
		(((unsigned int) (a)) ^ 2 * sizeof(struct edge_rec))), b);
	c = connect_left(b, a);
	if (ccw(s1, s3, s2)) {
	    retval.left = ((QUAD_EDGE)
			   (((unsigned int) (c)) ^ 2 *
			    sizeof(struct edge_rec)));
	    retval.right = c;
	} else {
	    retval.left = a;
	    retval.right = ((QUAD_EDGE)
			    (((unsigned int) (b)) ^ 2 *
			     sizeof(struct edge_rec)));
	    if (!ccw(s1, s2, s3))
		deleteedge(c);
	}
    }
    return retval;
}




QUAD_EDGE next_edge, avail_edge;






delete_all_edges()
{
    next_edge = 0;
    avail_edge = 0;
}



void *myalign(int align_size, int alloc_size)
{
    char *base = (char *) malloc(alloc_size + align_size);
    if (base == 0) {
	printf("myalign() failed\n");
	exit(-1);
    }
    return (void *) (base + align_size - ((int) base % align_size));
}


QUAD_EDGE alloc_edge()
{
    QUAD_EDGE ans;

    if (avail_edge == 0) {
	int i;

	ans =
	    (QUAD_EDGE) myalign(4 * (sizeof(struct edge_rec)),
				4 * (sizeof(struct edge_rec)));



	if ((int) ans & (4 * sizeof(struct edge_rec) - 1)) {
	    printf("Aborting in alloc_edge, ans = 0x%x\n", ans);
	    exit(-1);
	}
    } else
	ans = (QUAD_EDGE) avail_edge, avail_edge = (avail_edge)->next;
    return ans;
}

free_edge(e)
QUAD_EDGE e;
{
    QUAD_EDGE f;
    e = (QUAD_EDGE) ((int) e ^
		     ((int) e & (4 * sizeof(struct edge_rec) - 1)));
    (e)->next = avail_edge;
    avail_edge = e;
}







int incircle(a, b, c, d)
VERTEX_PTR a, b, c, d;
{
    double adx, ady, bdx, bdy, cdx, cdy, dx, dy, anorm, bnorm, cnorm,
	dnorm;
    double dret;
    VERTEX_PTR loc_a, loc_b, loc_c, loc_d;

    int donedx, donedy, donednorm;
    ;

    loc_d = d;
    dx = loc_d->v.x;;
    dy = loc_d->v.y;
    dnorm = loc_d->v.norm;;
    loc_a = a;
    adx = loc_a->v.x - dx;;
    ady = loc_a->v.y - dy;
    anorm = loc_a->v.norm;;
    loc_b = b;
    bdx = loc_b->v.x - dx;;
    bdy = loc_b->v.y - dy;
    bnorm = loc_b->v.norm;;
    loc_c = c;
    cdx = loc_c->v.x - dx;;
    cdy = loc_c->v.y - dy;
    cnorm = loc_c->v.norm;;

    dret = (anorm - dnorm) * (bdx * cdy - bdy * cdx);
    dret += (bnorm - dnorm) * (cdx * ady - cdy * adx);
    dret += (cnorm - dnorm) * (adx * bdy - ady * bdx);

    return ((0.0 < dret) ? 1 : 0);
}

int ccw(a, b, c)
VERTEX_PTR a, b, c;
{
    double dret;
    double xa, ya, xb, yb, xc, yc;
    VERTEX_PTR loc_a, loc_b, loc_c;

    int donexa, doneya, donexb, doneyb, donexc, doneyc;
    ;
    loc_a = a;
    xa = loc_a->v.x;
    ya = loc_a->v.y;
    loc_b = b;
    xb = loc_b->v.x;
    yb = loc_b->v.y;
    loc_c = c;
    xc = loc_c->v.x;
    yc = loc_c->v.y;


    dret = (xa - xc) * (yb - yc) - (xb - xc) * (ya - yc);

    return ((dret > 0.0) ? 1 : 0);
}




QUAD_EDGE makeedge(origin, destination)
VERTEX_PTR origin, destination;
{
    register QUAD_EDGE temp, ans;
    temp = alloc_edge();
    ans = temp;

    ;
    (temp)->next = ans;
    (temp)->v = origin;
    temp = (QUAD_EDGE) ((int) temp + sizeof(struct edge_rec));
    (temp)->next = (QUAD_EDGE) ((int) ans + 3 * sizeof(struct edge_rec));
    temp = (QUAD_EDGE) ((int) temp + sizeof(struct edge_rec));
    (temp)->next = (QUAD_EDGE) ((int) ans + 2 * sizeof(struct edge_rec));
    (temp)->v = destination;
    temp = (QUAD_EDGE) ((int) temp + sizeof(struct edge_rec));
    (temp)->next = (QUAD_EDGE) ((int) ans + 1 * sizeof(struct edge_rec));
    ;


    return (ans);
}

splice(a, b)
QUAD_EDGE a, b;
{
    QUAD_EDGE alpha, beta, temp;
    QUAD_EDGE t1;



    alpha = ((QUAD_EDGE)
	     ((((unsigned int) ((a)->next) +
		1 * sizeof(struct edge_rec)) & (4 *
						sizeof(struct edge_rec) -
						1)) | ((unsigned
							int) ((a)->next) &
						       ~(4 *
							 sizeof(struct
								edge_rec)
							 - 1))));
    beta = ((QUAD_EDGE)
	    ((((unsigned int) ((b)->next) +
	       1 * sizeof(struct edge_rec)) & (4 *
					       sizeof(struct edge_rec) -
					       1)) | ((unsigned
						       int) ((b)->next) &
						      ~(4 *
							sizeof(struct
							       edge_rec)
							- 1))));

    t1 = (beta)->next;
    temp = (alpha)->next;
    ;
    (alpha)->next = t1;

    ;
    (beta)->next = temp;

    temp = (a)->next;
    t1 = (b)->next;
    ;
    (b)->next = temp;
    ;
    (a)->next = t1;



}

swapedge(e)
QUAD_EDGE e;
{
    QUAD_EDGE a, b, syme, lnexttmp;
    VERTEX_PTR a1, b1;


    a = ((QUAD_EDGE)
	 ((((unsigned int) ((((QUAD_EDGE)
			      ((((unsigned int) (e) +
				 1 * sizeof(struct edge_rec)) & (4 *
								 sizeof
								 (struct
								  edge_rec)
								 -
								 1)) |
			       ((unsigned int) (e)
				& ~(4 * sizeof(struct edge_rec)
				    -
				    1)))))->next) +
	    1 * sizeof(struct edge_rec)) & (4 * sizeof(struct edge_rec) -
					    1)) | ((unsigned
						    int) ((((QUAD_EDGE)
							    ((((unsigned
								int) (e)
							       +
							       1 *
							       sizeof
							       (struct
								edge_rec))
							      & (4 *
								 sizeof
								 (struct
								  edge_rec)
								 -
								 1)) |
							     ((unsigned
							       int) (e)
							      & ~(4 *
								  sizeof
								  (struct
								   edge_rec)
								  -
								  1)))))->next)
						   & ~(4 *
						       sizeof(struct
							      edge_rec) -
						       1))));
    ;
    syme =
	((QUAD_EDGE) (((unsigned int) (e)) ^ 2 * sizeof(struct edge_rec)));
    b = ((QUAD_EDGE)
	 ((((unsigned int) ((((QUAD_EDGE)
			      ((((unsigned int) (syme) +
				 1 * sizeof(struct edge_rec)) & (4 *
								 sizeof
								 (struct
								  edge_rec)
								 -
								 1)) |
			       ((unsigned int) (syme) &
				~(4 * sizeof(struct edge_rec)
				  - 1)))))->next) +
	    1 * sizeof(struct edge_rec)) & (4 * sizeof(struct edge_rec) -
					    1)) | ((unsigned
						    int) ((((QUAD_EDGE)
							    ((((unsigned
								int) (syme)
							       +
							       1 *
							       sizeof
							       (struct
								edge_rec))
							      & (4 *
								 sizeof
								 (struct
								  edge_rec)
								 -
								 1)) |
							     ((unsigned
							       int)
							      (syme) & ~(4
									 *
									 sizeof
									 (struct
									  edge_rec)
									 -
									 1)))))->next)
						   & ~(4 *
						       sizeof(struct
							      edge_rec) -
						       1))));
    ;
    splice(e, a);
    splice(syme, b);
    lnexttmp = ((QUAD_EDGE)
		((((unsigned int) ((((QUAD_EDGE)
				     ((((unsigned int) (a) +
					3 * sizeof(struct edge_rec)) & (4 *
									sizeof
									(struct
									 edge_rec)
									-
									1))
				      | ((unsigned int) (a)
					 & ~(4 * sizeof(struct edge_rec)
					     -
					     1)))))->next) +
		   1 * sizeof(struct edge_rec)) & (4 *
						   sizeof(struct edge_rec)
						   -
						   1)) | ((unsigned
							   int) ((((QUAD_EDGE)
								   ((((unsigned int) (a)
								      +
								      3 *
								      sizeof
								      (struct
								       edge_rec))
								     & (4 *
									sizeof
									(struct
									 edge_rec)
									-
									1))
								    |
								    ((unsigned int) (a)
								     & ~(4
									 *
									 sizeof
									 (struct
									  edge_rec)
									 -
									 1)))))->next)
							  & ~(4 *
							      sizeof(struct
								     edge_rec)
							      - 1))));
    splice(e, lnexttmp);
    lnexttmp = ((QUAD_EDGE)
		((((unsigned int) ((((QUAD_EDGE)
				     ((((unsigned int) (b) +
					3 * sizeof(struct edge_rec)) & (4 *
									sizeof
									(struct
									 edge_rec)
									-
									1))
				      | ((unsigned int) (b)
					 & ~(4 * sizeof(struct edge_rec)
					     -
					     1)))))->next) +
		   1 * sizeof(struct edge_rec)) & (4 *
						   sizeof(struct edge_rec)
						   -
						   1)) | ((unsigned
							   int) ((((QUAD_EDGE)
								   ((((unsigned int) (b)
								      +
								      3 *
								      sizeof
								      (struct
								       edge_rec))
								     & (4 *
									sizeof
									(struct
									 edge_rec)
									-
									1))
								    |
								    ((unsigned int) (b)
								     & ~(4
									 *
									 sizeof
									 (struct
									  edge_rec)
									 -
									 1)))))->next)
							  & ~(4 *
							      sizeof(struct
								     edge_rec)
							      - 1))));
    splice(syme, lnexttmp);
    a1 = (((QUAD_EDGE)
	   (((unsigned int) (a)) ^ 2 * sizeof(struct edge_rec))))->v;
    b1 = (((QUAD_EDGE)
	   (((unsigned int) (b)) ^ 2 * sizeof(struct edge_rec))))->v;
    (e)->v = a1;
    ;
    (((QUAD_EDGE) (((unsigned int) (e)) ^ 2 * sizeof(struct edge_rec))))->
	v = b1;
    ;

}






int valid(l, basel)
QUAD_EDGE l, basel;
{
    register VERTEX_PTR t1, t2, t3;



    t1 = (basel)->v;
    t3 = (((QUAD_EDGE)
	   (((unsigned int) (basel)) ^ 2 * sizeof(struct edge_rec))))->v;

    t2 = (((QUAD_EDGE)
	   (((unsigned int) (l)) ^ 2 * sizeof(struct edge_rec))))->v;
    return ccw(t1, t2, t3);
}

void dump_quad(ptr)
QUAD_EDGE ptr;
{
    int i;
    QUAD_EDGE j;
    VERTEX_PTR v;

    ;
    ptr = (QUAD_EDGE) ((int) ptr & ~(4 * sizeof(struct edge_rec) - 1));
    printf("Entered DUMP_QUAD: ptr=0x%x\n", ptr);
    for (i = 0; i < 4; i++) {
	j = (((QUAD_EDGE) (ptr + i)))->next;
	v = (j)->v;

	printf("DUMP_QUAD: ptr=0x%x onext=0x%x,", ptr + i, j);
	printf("v=0x%x\n", v);
    }
    ;
}


EDGE_PAIR do_merge(ldo, ldi, rdi, rdo)
QUAD_EDGE ldi, rdi, ldo, rdo;
{
    int rvalid, lvalid;
    register QUAD_EDGE loc;
    register QUAD_EDGE basel, lcand, rcand, t;
    VERTEX_PTR t1, t2, t3;



    while (1) {
	t3 = (rdi)->v;



	t1 = (ldi)->v;
	t2 = (((QUAD_EDGE)
	       (((unsigned int) (ldi)) ^ 2 * sizeof(struct edge_rec))))->v;




	while (ccw(t1, t2, t3)) {
	    ldi = ((QUAD_EDGE)
		   ((((unsigned int) ((((QUAD_EDGE)
					((((unsigned int) (ldi) +
					   3 *
					   sizeof(struct edge_rec)) & (4 *
								       sizeof
								       (struct
									edge_rec)
								       -
								       1))
					 | ((unsigned int)
					    (ldi) & ~(4 *
						      sizeof(struct
							     edge_rec)
						      - 1)))))->next) +
		      1 * sizeof(struct edge_rec)) & (4 *
						      sizeof(struct
							     edge_rec) -
						      1)) | ((unsigned
							      int) ((((QUAD_EDGE)
								      ((((unsigned int)
									 (ldi) + 3 * sizeof(struct edge_rec))
									&
									(4
									 *
									 sizeof
									 (struct
									  edge_rec)
									 -
									 1))
								       |
								       ((unsigned int) (ldi)
									&
									~(4
									  *
									  sizeof
									  (struct
									   edge_rec)
									  -
									  1)))))->next)
							     & ~(4 *
								 sizeof
								 (struct
								  edge_rec)
								 - 1))));



	    t1 = (ldi)->v;
	    t2 = (((QUAD_EDGE)
		   (((unsigned int) (ldi)) ^ 2 *
		    sizeof(struct edge_rec))))->v;


	}


	t2 = (((QUAD_EDGE)
	       (((unsigned int) (rdi)) ^ 2 * sizeof(struct edge_rec))))->v;


	if (ccw(t2, t3, t1)) {
	    rdi = (((QUAD_EDGE)
		    (((unsigned int) (rdi)) ^ 2 *
		     sizeof(struct edge_rec))))->next;
	}

	else {
	    break;
	}
    }

    basel = connect_left(((QUAD_EDGE)
			  (((unsigned int) (rdi)) ^ 2 *
			   sizeof(struct edge_rec))), ldi);



    lcand = (((QUAD_EDGE)
	      (((unsigned int) (basel)) ^ 2 *
	       sizeof(struct edge_rec))))->next;
    rcand = ((QUAD_EDGE)
	     ((((unsigned int) ((((QUAD_EDGE)
				  ((((unsigned int) (basel) +
				     1 * sizeof(struct edge_rec)) & (4 *
								     sizeof
								     (struct
								      edge_rec)
								     -
								     1)) |
				   ((unsigned int) (basel) &
				    ~(4 * sizeof(struct edge_rec)
				      - 1)))))->next) +
		1 * sizeof(struct edge_rec)) & (4 *
						sizeof(struct edge_rec) -
						1)) | ((unsigned
							int) ((((QUAD_EDGE)
								((((unsigned int) (basel) + 1 * sizeof(struct edge_rec))
								  & (4 *
								     sizeof
								     (struct
								      edge_rec)
								     -
								     1)) |
								 ((unsigned
								   int)
								  (basel) &
								  ~(4 *
								    sizeof
								    (struct
								     edge_rec)
								    -
								    1)))))->next)
						       & ~(4 *
							   sizeof(struct
								  edge_rec)
							   - 1))));
    t1 = (basel)->v;
    t2 = (((QUAD_EDGE)
	   (((unsigned int) (basel)) ^ 2 * sizeof(struct edge_rec))))->v;






    if (t1 == (rdo)->v)
	rdo = basel;
    if (t2 == (ldo)->v)
	ldo =
	    ((QUAD_EDGE)
	     (((unsigned int) (basel)) ^ 2 * sizeof(struct edge_rec)));

    while (1) {
	VERTEX_PTR v1, v2, v3, v4;



	t = (lcand)->next;
	if (valid(t, basel)) {
	    v4 = (basel)->v;


	    v1 = (((QUAD_EDGE)
		   (((unsigned int) (lcand)) ^ 2 *
		    sizeof(struct edge_rec))))->v;
	    v3 = (lcand)->v;





	    v2 = (((QUAD_EDGE)
		   (((unsigned int) (t)) ^ 2 *
		    sizeof(struct edge_rec))))->v;
	    while (incircle(v1, v2, v3, v4)) {
		deleteedge(lcand);
		lcand = t;


		t = (lcand)->next;
		v1 = (((QUAD_EDGE)
		       (((unsigned int) (lcand)) ^ 2 *
			sizeof(struct edge_rec))))->v;
		v3 = (lcand)->v;






		v2 = (((QUAD_EDGE)
		       (((unsigned int) (t)) ^ 2 *
			sizeof(struct edge_rec))))->v;
	    }
	}

	t = ((QUAD_EDGE)
	     ((((unsigned int) ((((QUAD_EDGE)
				  ((((unsigned int) (rcand) +
				     1 * sizeof(struct edge_rec)) & (4 *
								     sizeof
								     (struct
								      edge_rec)
								     -
								     1)) |
				   ((unsigned int) (rcand)
				    & ~(4 * sizeof(struct edge_rec)
					-
					1)))))->next) +
		1 * sizeof(struct edge_rec)) & (4 *
						sizeof(struct edge_rec) -
						1)) | ((unsigned
							int) ((((QUAD_EDGE)
								((((unsigned int) (rcand)
								   +
								   1 *
								   sizeof
								   (struct
								    edge_rec))
								  & (4 *
								     sizeof
								     (struct
								      edge_rec)
								     -
								     1)) |
								 ((unsigned
								   int)
								  (rcand) &
								  ~(4 *
								    sizeof
								    (struct
								     edge_rec)
								    -
								    1)))))->next)
						       & ~(4 *
							   sizeof(struct
								  edge_rec)
							   - 1))));
	if (valid(t, basel)) {
	    v4 = (((QUAD_EDGE)
		   (((unsigned int) (basel)) ^ 2 *
		    sizeof(struct edge_rec))))->v;
	    v1 = (((QUAD_EDGE)
		   (((unsigned int) (t)) ^ 2 *
		    sizeof(struct edge_rec))))->v;
	    v2 = (((QUAD_EDGE)
		   (((unsigned int) (rcand)) ^ 2 *
		    sizeof(struct edge_rec))))->v;
	    v3 = (rcand)->v;
	    while (incircle(v1, v2, v3, v4)) {
		deleteedge(rcand);
		rcand = t;
		t = ((QUAD_EDGE)
		     ((((unsigned int) ((((QUAD_EDGE)
					  ((((unsigned int) (rcand) +
					     1 *
					     sizeof(struct edge_rec)) & (4
									 *
									 sizeof
									 (struct
									  edge_rec)
									 -
									 1))
					   | ((unsigned int) (rcand) &
					      ~(4 *
						sizeof(struct edge_rec) -
						1)))))->next) +
			1 * sizeof(struct edge_rec)) & (4 *
							sizeof(struct
							       edge_rec)
							-
							1)) | ((unsigned
								int) ((((QUAD_EDGE) ((((unsigned int) (rcand) + 1 * sizeof(struct edge_rec)) & (4 * sizeof(struct edge_rec) - 1)) | ((unsigned int) (rcand) & ~(4 * sizeof(struct edge_rec) - 1)))))->next) & ~(4 * sizeof(struct edge_rec) - 1))));
		v2 = (((QUAD_EDGE)
		       (((unsigned int) (rcand)) ^ 2 *
			sizeof(struct edge_rec))))->v;
		v3 = (rcand)->v;
		v1 = (((QUAD_EDGE)
		       (((unsigned int) (t)) ^ 2 *
			sizeof(struct edge_rec))))->v;
	    }
	}

	lvalid = valid(lcand, basel);

	rvalid = valid(rcand, basel);
	if ((!lvalid) && (!rvalid)) {
	    EDGE_PAIR retval;
	    retval.left = ldo;
	    retval.right = rdo;
	    return retval;
	}
	v1 = (((QUAD_EDGE)
	       (((unsigned int) (lcand)) ^ 2 *
		sizeof(struct edge_rec))))->v;
	v2 = (lcand)->v;
	v3 = (rcand)->v;
	v4 = (((QUAD_EDGE)
	       (((unsigned int) (rcand)) ^ 2 *
		sizeof(struct edge_rec))))->v;
	if (!lvalid || (rvalid && incircle(v1, v2, v3, v4))) {
	    basel = connect_left(rcand, ((QUAD_EDGE)
					 (((unsigned int) (basel)) ^ 2 *
					  sizeof(struct edge_rec))));
	    rcand = ((QUAD_EDGE)
		     ((((unsigned int) ((((QUAD_EDGE)
					  ((((unsigned int) (((QUAD_EDGE)
							      (((unsigned
								 int)
								(basel)) ^
							       2 *
							       sizeof
							       (struct
								edge_rec))))
					     +
					     3 *
					     sizeof(struct edge_rec)) & (4
									 *
									 sizeof
									 (struct
									  edge_rec)
									 -
									 1))
					   |
					   ((unsigned
					     int) (((QUAD_EDGE)
						    (((unsigned
						       int) (basel)) ^ 2 *
						     sizeof(struct
							    edge_rec)))) &
					    ~(4 * sizeof(struct edge_rec) -
					      1)))))->next) +
			1 * sizeof(struct edge_rec)) & (4 *
							sizeof(struct
							       edge_rec) -
							1)) | ((unsigned
								int) ((((QUAD_EDGE) ((((unsigned int) (((QUAD_EDGE) (((unsigned int) (basel)) ^ 2 * sizeof(struct edge_rec)))) + 3 * sizeof(struct edge_rec)) & (4 * sizeof(struct edge_rec) - 1)) | ((unsigned int) (((QUAD_EDGE) (((unsigned int) (basel)) ^ 2 * sizeof(struct edge_rec)))) & ~(4 * sizeof(struct edge_rec) - 1)))))->next) & ~(4 * sizeof(struct edge_rec) - 1))));
	} else {
	    basel = ((QUAD_EDGE)
		     (((unsigned int) (connect_right(lcand, basel))) ^ 2 *
		      sizeof(struct edge_rec)));
	    lcand = (((QUAD_EDGE)
		      (((unsigned int) (basel)) ^ 2 *
		       sizeof(struct edge_rec))))->next;
	}
    }
}

# 895 "voronoi.c"
struct EDGE_STACK *allocate_stack();
struct get_point get_points();
int loop = 0, randum = 1, filein = 0, fileout = 1, statistics = 0;

void in_order(tree)
VERTEX_PTR tree;
{
    VERTEX_PTR tleft, tright;
    double x, y;

    if (!tree) {
	printf("NULL\n");
	return;
    }

    x = tree->v.x;
    y = tree->v.y;
    printf("X=%f, Y=%f\n", x, y);
    tleft = tree->left;
    in_order(tleft);
    tright = tree->right;
    in_order(tright);
}

int mult(int p, int q)
{
    int p1, p0, q1, q0;

    p1 = p / 10000;
    p0 = p % 10000;
    q1 = q / 10000;
    q0 = q % 10000;
    return (((p0 * q1 + p1 * q0) % 10000) * 10000 + p0 * q0);
}

int skiprand(int seed, int n)
{
    for (; n; n--)
	seed = random(seed);
    return seed;
}

int random(int seed)
{
    seed = (mult(seed, 31415821) + 1);
    return seed;
}



print_extra(extra)
VERTEX_PTR extra;
{

    double x, y;
    x = extra->v.x;
    y = extra->v.y;
    printf("X=%f, Y=%f\n", x, y);
}

main(argc, argv)
int argc;
char *argv[];
{
    unsigned long time1, time2;
    VERTEX_PTR ptr;
    struct EDGE_STACK *my_stack;
    struct get_point point, extra;
    QUAD_EDGE edge;
    int i, n, rows, cyon = 1, but, retained;
    int xsorted = 1;
    to_lincoln = to_off = to_3d_out = to_color = 0;
    voronoi = delaunay = 1;
    interactive = ahost = 0;
    retained = 0;


    printf("argc = %d\n", argc);
    n = dealwithargs(argc, argv);


    if (1) {


	printf("getting %d points\n", n);

	extra = get_points(1, 1.0, n, 1023, NumNodes - 1, 1);
	point =
	    get_points(n - 1, extra.curmax, n - 1, extra.seed, 0,
		       NumNodes);



	num_vertices = n + 1;
	my_stack = allocate_stack(num_vertices);

	if (flag)
	    in_order(point.v);
	printf("Done in_order\n");
	if (flag)
	    print_extra(extra.v);
	printf("Doing voronoi on %d nodes\n", n);
# 1009 "voronoi.c"
	edge = build_delaunay_triangulation(point.v, extra.v);

	printf("Done built delaunay triangulation\n");



	if (flag){
            printf("n:%d\n", n);
	    output_voronoi_diagram(edge, n, my_stack);
        }




    }
    exit(0);



}

struct EDGE_STACK *allocate_stack(num_vertices)
int num_vertices;
{
    struct EDGE_STACK *my_stack;

    num_edgeparts = 12 * num_vertices;
    my_stack = (struct EDGE_STACK *) malloc(sizeof(struct EDGE_STACK));
    my_stack->elts =
	(QUAD_EDGE *) malloc(num_edgeparts * sizeof(QUAD_EDGE));
    my_stack->stack_size = num_edgeparts / 2;
    return my_stack;
}

# 1049 "voronoi.c"
struct get_point get_points(n, curmax, i, seed, processor, numnodes)
int n;
double curmax;
int i, seed;
{
    VERTEX_PTR node;
    struct get_point point;
    int j, k;
    double tmp;

    get_points_called_times++;
    if (n < 1) {
	point.v = 0;
	point.curmax = curmax;
	point.seed = seed;
	return point;
    }

    point =
	get_points(n / 2, curmax, i, seed, processor + numnodes / 2,
		   numnodes / 2);

    i -= n / 2;

    j = NumNodes - ((NumNodes - 1) / 2);






    node = (VERTEX_PTR) malloc(sizeof(struct VERTEX));



    node->v.x =
	point.curmax *
	exp(log((((double) (random(point.seed))) / (double) 2147483647)) /
	    i);
    node->v.y = (((double) (random(seed))) / (double) 2147483647);
    node->v.norm = node->v.x * node->v.x + node->v.y * node->v.y;
    node->right = point.v;

    point = get_points(n / 2, node->v.x, i - 1, point.seed,
		       processor, numnodes / 2);
    node->left = point.v;
    point.v = node;
    return point;
}

# 1102 "voronoi.c"
QUAD_EDGE pop_edge(x)
struct EDGE_STACK *x;
{
    int a = x->ptr--;
    return (x)->elts[a];
}

push_edge(stack, edge)
struct EDGE_STACK *stack;
QUAD_EDGE edge;
{
    register int a;

    if (stack->ptr == stack->stack_size) {
	printf("cannot push onto stack: stack is too large\n");
    } else {
	a = stack->ptr;
	a++;
	stack->ptr = a;
	stack->elts[a] = edge;
    }
}

push_ring(stack, edge)
struct EDGE_STACK *stack;
QUAD_EDGE edge;
{
    QUAD_EDGE nex;
    nex = (edge)->next;
    while (nex != edge) {
	if ((nex)->wasseen == 0) {
	    (nex)->wasseen = 1;
	    push_edge(stack, nex);
	}
	nex = (nex)->next;
    }
}

push_nonzero_ring(stack, edge)
struct EDGE_STACK *stack;
QUAD_EDGE edge;
{
    QUAD_EDGE nex;
    nex = (edge)->next;
    while (nex != edge) {
	if ((nex)->wasseen != 0) {
	    (nex)->wasseen = 0;
	    push_edge(stack, nex);
	}
	nex = (nex)->next;
    }
}

zero_seen(my_stack, edge)
QUAD_EDGE edge;
struct EDGE_STACK *my_stack;
{
    my_stack->ptr = 0;
    push_nonzero_ring(my_stack, edge);
    while (my_stack->ptr != 0) {
	edge = pop_edge(my_stack);
	push_nonzero_ring(my_stack, ((QUAD_EDGE)
				     (((unsigned int) (edge)) ^ 2 *
				      sizeof(struct edge_rec))));
    }
}
