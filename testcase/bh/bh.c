#include "../include/stdio.h"
#include "../include/stdlib.h"
#include "../include/math.h"



extern int NumNodes;


extern int nbody;
# 23 "bh.c"
int dealwithargs(int argc, char *argv[])
{
    int level;

    if (argc > 2){
	//NumNodes = atoi(argv[2]);
    }else{
	NumNodes = 2;
    }

    if (argc > 1){
	//nbody = atoi(argv[1]);
    }else{
	nbody = 64;
    }

    return level;

}

# 53 "bh.c"
# 1 "bh.h" 1
# 20 "bh.h"
extern int nbody;
# 44 "bh.h"
int NumNodes;
# 84 "bh.h"
typedef short int bool;
# 94 "bh.h"
typedef unsigned char byte;





typedef char *string;







typedef double real, *realptr;
# 128 "bh.h"
typedef void (*proc) ();
typedef int (*iproc) ();
typedef real(*rproc) ();
# 193 "bh.h"
typedef real vector[3], matrix[3][3];

extern double sqrt(double x);
# 467 "bh.h"
extern double fabs();
# 495 "bh.h"
typedef struct node {
    short type;
    real mass;
    vector pos;
    int proc;
    int new_proc;



} *nodeptr;
# 525 "bh.h"
typedef struct bnode *bodyptr;

typedef struct bnode {
    short type;
    real mass;
    vector pos;
    int proc;
    int new_proc;



    vector vel;
    vector acc;
    vector new_acc;
    real phi;
    bodyptr next;
    bodyptr proc_next;
} body;
# 567 "bh.h"
typedef struct cnode *cellptr;

typedef struct cnode {
    short type;
    real mass;
    vector pos;
    int proc;
    int new_proc;



    nodeptr subp[(1 << 3)];
    cellptr next;

} cell;
# 591 "bh.h"
typedef struct {
    real rmin[3];
    real rsize;
    nodeptr root;
    bodyptr bodytab[64];
    bodyptr bodiesperproc[64];
} tree, *treeptr;
# 608 "bh.h"
typedef struct {
    real tnow;
    real tout;
    int nsteps;
} timerecord, *timeptr;





typedef struct {
    int xp[3];
    bool inb;
} icstruct;

typedef struct {
    double v[3];
} vecstruct;




nodeptr root;





vector rmin;

real rsize;
# 658 "bh.h"
typedef struct {
    real mtot;
    real etot[3];
    matrix keten;
    matrix peten;
    vector cmphase[2];
    vector amvec;
} ostruct;







extern int nbody;
# 54 "bh.c" 2







double my_rand(double seed)
{
    double t = 16807.0 * seed + 1;



    seed = t - (2147483647.0 * ((double) ((int) (t / 2147483647.0))));
    return seed;

}





double xrand(double xl, double xh, double r)
{
    double res;

    res = xl + (xh - xl) * r / 2147483647.0;
    return (res);
}

# 114 "bh.c"
typedef struct {
    bodyptr pskip;
    vector pos0;
    real phi0;
    vector acc0;
} hgstruct, *hgsptr;






extern bool subdivp(nodeptr p, real dsq, real tolsq, hgstruct hg);
hgstruct walksub(nodeptr p, real dsq, real tolsq, hgstruct hg, int level);
hgstruct gravsub(nodeptr p, hgstruct hg);

hgstruct walksub(nodeptr p, real dsq, real tolsq, hgstruct hg, int level)
{
    int k, i;
    nodeptr r;
    nodeptr tmp[(1 << 3)];


    if (subdivp(p, dsq, tolsq, hg)) {
	for (k = 0; k < (1 << 3); k++) {
	    r = (((cellptr) p)->subp)[k];
	    if (r != 0)
		hg = walksub(r, dsq / 4.0, tolsq, hg, level + 1);
	}
    } else if (p != (nodeptr) hg.pskip) {
	hg = gravsub(p, hg);
    }


    return hg;
}

int nbody;




double sqrt(), xrand(), my_rand();
double pow(double, double);
extern icstruct intcoord(bodyptr p, treeptr t);
extern int BhDebug;

void computegrav(treeptr t, int nstep);
nodeptr maketree(bodyptr btab, int nbody, treeptr t, int nsteps, int proc);
void vp(bodyptr q, int nstep);


void gravstep(real rsize, nodeptr rt, bodyptr p, int nstep, real dthf);
void ptree(nodeptr n, int level);


typedef struct {
    vector cmr;
    vector cmv;
    bodyptr list;
    bodyptr tail;
} datapoints;
# 214 "bh.c"
typedef struct fc_datapoints {



    datapoints value;
} future_cell_datapoints;



bodyptr testdata();
datapoints uniform_testdata(int proc, int nbody, int seedfactor);
void stepsystem(treeptr t, int nstep);
treeptr old_main();
void my_free(nodeptr n);
bodyptr ubody_alloc(int p);

void freetree(nodeptr n);
void freetree1(nodeptr n);

int arg1;


main(int argc, char *argv[])
{
    treeptr t;
# 248 "bh.c"
    dealwithargs(argc, argv);







    if (1) {



	printf("nbody = %d, numnodes = %d\n", nbody, NumNodes);






	t = old_main();
# 278 "bh.c"
    }


}


int Srand(int val)
{
    return rand() / 123;
}


treeptr old_main()
{
    real tnow;
    real tout;
    int i, nsteps, nprocs;
    treeptr t;
    bodyptr bt0, p;
    long t1, t2;
    vector cmr, cmv;
    bodyptr prev = 0;
    int tmp = 0, range = ((1 << 3) << 3) / NumNodes;
    int bodiesper[64];
    bodyptr ptrper[64];
    future_cell_datapoints fc[32];

    Srand(123);


    t = (treeptr) malloc(sizeof(tree));
    ((t)->root) = 0;
    t->rmin[0] = -2.0;
    t->rmin[1] = -2.0;
    t->rmin[2] = -2.0;
    t->rsize = -2.0 * -2.0;

    ; {
	int i;
	for (i = 0; i < 3; i++)
	    (cmr)[i] = 0.0;
    };
    ; {
	int i;
	for (i = 0; i < 3; i++)
	    (cmv)[i] = 0.0;
    };


    for (i = 0; i < 32; i++) {
	datapoints points;
	int processor = i / (32 / NumNodes);

	points = uniform_testdata(processor, nbody / 32, i + 1);

	t->bodytab[i] = points.list;
	if (prev)
	    ((prev)->next) = points.list;
	prev = points.tail;
	; {
	    int i;
	    for (i = 0; i < 3; i++)
		(cmr)[i] = (cmr)[i] + (points.cmr)[i];
	};
	; {
	    int i;
	    for (i = 0; i < 3; i++)
		(cmv)[i] = (cmv)[i] + (points.cmv)[i];
	};
    }
# 352 "bh.c"
    printf("bodies created \n");
    ; {
	int i;
	for (i = 0; i < 3; i++)
	    (cmr)[i] = (cmr)[i] / ((real) nbody);
    };
    ; {
	int i;
	for (i = 0; i < 3; i++)
	    (cmv)[i] = (cmv)[i] / ((real) nbody);
    };

    for (tmp = 0; tmp < 64; tmp++) {
	bodiesper[tmp] = 0;
	ptrper[tmp] = 0;
    }


    for (p = t->bodytab[0]; p != 0; p = ((p)->next)) {
	icstruct xqic;

	; {
	    int i;
	    for (i = 0; i < 3; i++)
		(((p)->pos))[i] = (((p)->pos))[i] - (cmr)[i];
	};
	; {
	    int i;
	    for (i = 0; i < 3; i++)
		(((p)->vel))[i] = (((p)->vel))[i] - (cmv)[i];
	};

	xqic = intcoord(p, t);
	tmp =
	    ((old_subindex(xqic, (1 << (8 * sizeof(int) - 2)) >> 1) << 3) +
	     old_subindex(xqic, (1 << (8 * sizeof(int) - 2)) >> 2));
	tmp = tmp / range;
	bodiesper[tmp]++;
	((p)->proc_next) = ptrper[tmp];
	ptrper[tmp] = p;
	((p)->proc) = tmp;
    }
    ;;
    for (tmp = 0; tmp < NumNodes; tmp++) {
	printf("Bodies per %d = %d\n", tmp, bodiesper[tmp]);
	t->bodiesperproc[tmp] = ptrper[tmp];
    }
# 401 "bh.c"
    tmp = 0;

    tnow = 0.0;
    i = 0;

    nsteps = 10;
# 432 "bh.c"
    return t;
}

# 446 "bh.c"
bodyptr testdata()
{
    real rsc, vsc, r, v, x, y;
    vector cmr, cmv;
    bodyptr head, p, prev;
    int i;
    double temp, t1;
    double seed = 123.0;
    int k;
    double rsq, rsc1;
    real rad;

    if (!(0)) {
	printf("Assertion Failure #%d", (99));
	exit(0);
    };
    rsc = 3 * 3.14159265358979323846 / 16;
    vsc = sqrt(1.0 / rsc);
    ; {
	int i;
	for (i = 0; i < 3; i++)
	    (cmr)[i] = 0.0;
    };
    ; {
	int i;
	for (i = 0; i < 3; i++)
	    (cmv)[i] = 0.0;
    };
    head = (bodyptr) ubody_alloc(0);
    prev = head;

    for (i = 0; i < nbody; i++) {
	p = ubody_alloc(0);

	if (p == 0)
	    printf("testdata: not enough memory\n");
	((prev)->next) = p;
	prev = p;
	((p)->type) = 01;
	((p)->mass) = 1.0 / nbody;
	seed = my_rand(seed);
	t1 = xrand(0.0, 0.999, seed);
	temp = pow(t1, -2.0 / 3.0) - 1;
	r = 1 / sqrt(temp);


	rad = rsc * r;
	do {
	    for (k = 0; k < 3; k++) {
		seed = my_rand(seed);
		((p)->pos)[k] = xrand(-1.0, 1.0, seed);
	    }
	    ; {
		int i;
		(rsq) = 0.0;
		for (i = 0; i < 3; i++)
		    (rsq) += (((p)->pos))[i] * (((p)->pos))[i];
	    };
	} while (rsq > 1.0);
	rsc1 = rad / sqrt(rsq);
	; {
	    int i;
	    for (i = 0; i < 3; i++)
		(((p)->pos))[i] = (((p)->pos))[i] * (rsc1);
	};

	; {
	    int i;
	    for (i = 0; i < 3; i++)
		(cmr)[i] = (cmr)[i] + (((p)->pos))[i];
	};
	do {
	    seed = my_rand(seed);
	    x = xrand(0.0, 1.0, seed);
	    seed = my_rand(seed);
	    y = xrand(0.0, 0.1, seed);
	    printf("x: %f\ty: %f\n", x, y);
	} while (y > x * x * pow(1 - x * x, 3.5));
	v = sqrt(2.0) * x / pow(1 + r * r, 0.25);


	rad = vsc * v;

	do {
	    for (k = 0; k < 3; k++) {
		seed = my_rand(seed);
		((p)->vel)[k] = xrand(-1.0, 1.0, seed);
	    }
	    ; {
		int i;
		(rsq) = 0.0;
		for (i = 0; i < 3; i++)
		    (rsq) += (((p)->vel))[i] * (((p)->vel))[i];
	    };
	} while (rsq > 1.0);
	rsc1 = rad / sqrt(rsq);
	; {
	    int i;
	    for (i = 0; i < 3; i++)
		(((p)->vel))[i] = (((p)->vel))[i] * (rsc1);
	};
	; {
	    int i;
	    for (i = 0; i < 3; i++)
		(cmv)[i] = (cmv)[i] + (((p)->vel))[i];
	};
    }



    ((prev)->next) = 0;
    head = ((head)->next);

    ; {
	int i;
	for (i = 0; i < 3; i++)
	    (cmr)[i] = (cmr)[i] / ((real) nbody);
    };
    ; {
	int i;
	for (i = 0; i < 3; i++)
	    (cmv)[i] = (cmv)[i] / ((real) nbody);
    };
    for (p = head; p != 0; p = ((p)->next)) {
	; {
	    int i;
	    for (i = 0; i < 3; i++)
		(((p)->pos))[i] = (((p)->pos))[i] - (cmr)[i];
	};
	; {
	    int i;
	    for (i = 0; i < 3; i++)
		(((p)->vel))[i] = (((p)->vel))[i] - (cmv)[i];
	};
    }
    return head;
}




extern int EventCount;

void stepsystem(treeptr t, int nstep)
{
    bodyptr bt, bt0, q;
    int i;
    nodeptr root;





    int barge, cflctdiff, misstemp, diff;



    ;;
    if (((t)->root) != 0) {
	freetree1(((t)->root));
	((t)->root) = 0;
    }







    root = maketree(bt, nbody, t, nstep, 0);


    ((t)->root) = root;
# 575 "bh.c"
    computegrav(t, nstep);
# 608 "bh.c"
}


void freetree1(nodeptr n)
{
    unsigned long t1, t2;
    int foo;

    freetree(n);
}


void freetree(nodeptr n)
{
    nodeptr r;
    int i;







    if ((n == 0) || (((n)->type) == 01))
	return;


    for (i = (1 << 3) - 1; i >= 0; i--) {
	r = (((cellptr) n)->subp)[i];
	if (r != 0) {




	    freetree(r);

	}
    }
# 657 "bh.c"
    my_free(n);
    ;;
}


nodeptr cp_free_list = 0;
bodyptr bp_free_list = 0;



void my_free(nodeptr n)
{
    if (((n)->type) == 01) {
	(((bodyptr) n)->next) = bp_free_list;
	bp_free_list = (bodyptr) n;
    } else {

	(((cellptr) n)->next) = (cellptr) cp_free_list;
	cp_free_list = n;
    }
}




bodyptr body_alloc(int p, real p0, real p1, real p2, real v0, real v1,
		   real v2, real a0, real a1, real a2, real mass,
		   bodyptr ob)
{
    bodyptr tmp;

    if (bp_free_list != 0) {
	tmp = bp_free_list;
	bp_free_list = ((bp_free_list)->next);
    } else {
	tmp = (bodyptr) malloc(sizeof(body));
    }
    ((tmp)->type) = 01;
    ((tmp)->proc) = p;
    ((tmp)->pos)[0] = p0;
    ((tmp)->pos)[1] = p1;
    ((tmp)->pos)[2] = p2;
    ((tmp)->vel)[0] = v0;
    ((tmp)->vel)[1] = v1;
    ((tmp)->vel)[2] = v2;
    ((tmp)->acc)[0] = a0;
    ((tmp)->acc)[1] = a1;
    ((tmp)->acc)[2] = a2;
    ((tmp)->mass) = mass;

    return tmp;

}



bodyptr ubody_alloc(int p)
{
    bodyptr tmp;

    tmp = (bodyptr) malloc(sizeof(body));

    ((tmp)->type) = 01;
    ((tmp)->proc) = p;
    ((tmp)->proc_next) = 0;
    ((tmp)->new_proc) = p;
    return tmp;

}


cellptr cell_alloc(int p)
{
    cellptr tmp;
    int i;

    if (cp_free_list != 0) {
	tmp = (cellptr) cp_free_list;
	cp_free_list = (nodeptr) (((cellptr) cp_free_list)->next);
    } else {
	tmp = (cellptr) malloc(sizeof(cell));
    }
    ((tmp)->type) = 02;
    ((tmp)->proc) = p;
    for (i = 0; i < (1 << 3); i++)
	((tmp)->subp)[i] = 0;

    return tmp;
}





datapoints uniform_testdata(int proc, int nbody, int seedfactor)
{
    datapoints retval;
    real rsc, vsc, r, v, x, y;
    bodyptr head, p, prev;
    int i;
    double temp, t1;
    double seed = 123.0 * (double) seedfactor;
    int k;
    double rsq, rsc1;
    real rad;
    real coeff;
# 771 "bh.c"
    rsc = 3 * 3.14159265358979323846 / 16;
    vsc = sqrt(1.0 / rsc);
    ; {
	int i;
	for (i = 0; i < 3; i++)
	    (retval.cmr)[i] = 0.0;
    };
    ; {
	int i;
	for (i = 0; i < 3; i++)
	    (retval.cmv)[i] = 0.0;
    };
    head = (bodyptr) ubody_alloc(proc);
    prev = head;

    for (i = 0; i < nbody; i++) {
	p = ubody_alloc(proc);

	if (p == 0)
	    printf("testdata: not enough memory\n");
	((prev)->next) = p;
	prev = p;
	((p)->type) = 01;
	((p)->mass) = 1.0 / nbody;
	seed = my_rand(seed);
	t1 = xrand(0.0, 0.999, seed);
	temp = pow(t1, -2.0 / 3.0) - 1;
	r = 1 / sqrt(temp);

	coeff = 4.0;
	for (k = 0; k < 3; k++) {
	    seed = my_rand(seed);
	    r = xrand(0.0, 0.999, seed);
	    ((p)->pos)[k] = coeff * r;
	}

	; {
	    int i;
	    for (i = 0; i < 3; i++)
		(retval.cmr)[i] = (retval.cmr)[i] + (((p)->pos))[i];
	};
	do {
	    seed = my_rand(seed);
	    x = xrand(0.0, 1.0, seed);
	    seed = my_rand(seed);
	    y = xrand(0.0, 0.1, seed);
	    printf("xrand: %f\tyrand: %f\t", x, y);
	    printf("seed: %f\n", seed);
	} while (y > x * x * pow(1 - x * x, 3.5));

	v = sqrt(2.0) * x / pow(1 + r * r, 0.25);


	rad = vsc * v;

	do {
	    for (k = 0; k < 3; k++) {
		seed = my_rand(seed);
		((p)->vel)[k] = xrand(-1.0, 1.0, seed);
	    }
	    ; {
		int i;
		(rsq) = 0.0;
		for (i = 0; i < 3; i++)
		    (rsq) += (((p)->vel))[i] * (((p)->vel))[i];
	    };
	} while (rsq > 1.0);
	rsc1 = rad / sqrt(rsq);
	; {
	    int i;
	    for (i = 0; i < 3; i++)
		(((p)->vel))[i] = (((p)->vel))[i] * (rsc1);
	};
	; {
	    int i;
	    for (i = 0; i < 3; i++)
		(retval.cmv)[i] = (retval.cmv)[i] + (((p)->vel))[i];
	};
    }


    ((prev)->next) = 0;
    retval.list = ((head)->next);
    retval.tail = prev;

    ;;

    return retval;
}

# 859 "bh.c"
hgstruct gravsub(nodeptr p, hgstruct hg);
hgstruct walksub(nodeptr p, real dsq, real tolsq, hgstruct hg, int level);
bool subdivp(nodeptr p, real dsq, real tolsq, hgstruct hg);
double sqrt(double arg);
void grav(real rsize, nodeptr rt, bodyptr q, int nstep, real dthf);
void vp(bodyptr q, int nstep);
void hackgrav(bodyptr p, real rsize, nodeptr rt);

void computegrav(treeptr t, int nstep)
{
    int i;



    real rsize;
    real dthf;
    nodeptr root;
    bodyptr blist;


    rsize = ((t)->rsize);

    dthf = 0.5 * 0.0125;

    ;;
    for (i = NumNodes - 1; i >= 0; i--) {
	root = ((t)->root);
	blist = t->bodiesperproc[i];

	grav(rsize, root, blist, nstep, dthf);



    }






    ;;

}


void grav(real rsize, nodeptr rt, bodyptr bodies, int nstep, real dthf)
{
    bodyptr p, q;
    int i = 0;



    if (bodies != 0) {
	bodyptr foo = bodies;
    }
    q = bodies;

    ;;

    while (q != 0) {
	gravstep(rsize, rt, q, nstep, dthf);
	q = ((q)->proc_next);
	i++;
    }

    ;;

}

void vp(bodyptr q, int nstep)
{
    real dthf;
    vector acc1, dacc, dvel, vel1, dpos;

    dthf = 0.5 * 0.0125;


    if (q != 0) {
	bodyptr foo = q;
    }
    ;;

    for (; q != 0; q = ((q)->proc_next)) {



	; {
	    int i;
	    for (i = 0; i < 3; i++)
		(acc1)[i] = (((q)->new_acc))[i];
	};
	if (nstep > 0) {
	    ; {
		int i;
		for (i = 0; i < 3; i++)
		    (dacc)[i] = (acc1)[i] - (((q)->acc))[i];
	    };
	    ; {
		int i;
		for (i = 0; i < 3; i++)
		    (dvel)[i] = (dacc)[i] * (dthf);
	    };

	    ; {
		int i;
		for (i = 0; i < 3; i++)
		    (dvel)[i] = (((q)->vel))[i] + (dvel)[i];
	    };
	    ; {
		int i;
		for (i = 0; i < 3; i++)
		    (((q)->vel))[i] = (dvel)[i];
	    };
	}
	{
	    real p0, p1, p2;
	    p0 = ((q)->pos)[0];
	    p1 = ((q)->pos)[1];
	    p2 = ((q)->pos)[2];
	    if (!(!0)) {
		printf("Assertion Failure #%d", (99));
		exit(0);
	    };
	    if (!(!0)) {
		printf("Assertion Failure #%d", (98));
		exit(0);
	    };
	    if (!(!0)) {
		printf("Assertion Failure #%d", (97));
		exit(0);
	    };
	    if (!(((p0 > 0) ? (p0) : (-p0)) < 10.0)) {
		printf("Assertion Failure #%d", (96));
		exit(0);
	    };
	    if (!(((p1 > 0) ? (p1) : (-p1)) < 10.0)) {
		printf("Assertion Failure #%d", (95));
		exit(0);
	    };
	    if (!(((p2 > 0) ? (p2) : (-p2)) < 10.0)) {
		printf("Assertion Failure #%d", (94));
		exit(0);
	    };



	}
	; {
	    int i;
	    for (i = 0; i < 3; i++)
		(((q)->acc))[i] = (acc1)[i];
	};
	{
	    real p0, p1, p2;
	    p0 = ((q)->acc)[0];
	    p1 = ((q)->acc)[1];
	    p2 = ((q)->acc)[2];
	    if (!(!0)) {
		printf("Assertion Failure #%d", (89));
		exit(0);
	    };
	    if (!(!0)) {
		printf("Assertion Failure #%d", (88));
		exit(0);
	    };
	    if (!(!0)) {
		printf("Assertion Failure #%d", (87));
		exit(0);
	    };
	    if (!(((p0 > 0) ? (p0) : (-p0)) < 10000.0)) {
		printf("Assertion Failure #%d", (86));
		exit(0);
	    };
	    if (!(((p1 > 0) ? (p1) : (-p1)) < 10000.0)) {
		printf("Assertion Failure #%d", (85));
		exit(0);
	    };
	    if (!(((p2 > 0) ? (p2) : (-p2)) < 10000.0)) {
		printf("Assertion Failure #%d", (84));
		exit(0);
	    };

	}

	; {
	    int i;
	    for (i = 0; i < 3; i++)
		(dvel)[i] = (((q)->acc))[i] * (dthf);
	};
	{
	    real p0, p1, p2;
	    p0 = ((q)->vel)[0];
	    p1 = ((q)->vel)[1];
	    p2 = ((q)->vel)[2];
	    if (!(!0)) {
		printf("Assertion Failure #%d", (79));
		exit(0);
	    };
	    if (!(!0)) {
		printf("Assertion Failure #%d", (78));
		exit(0);
	    };
	    if (!(!0)) {
		printf("Assertion Failure #%d", (77));
		exit(0);
	    };
	    if (!(((p0 > 0) ? (p0) : (-p0)) < 10000.0)) {
		printf("Assertion Failure #%d", (76));
		exit(0);
	    };
	    if (!(((p1 > 0) ? (p1) : (-p1)) < 10000.0)) {
		printf("Assertion Failure #%d", (75));
		exit(0);
	    };
	    if (!(((p2 > 0) ? (p2) : (-p2)) < 10000.0)) {
		printf("Assertion Failure #%d", (74));
		exit(0);
	    };

	}
	; {
	    int i;
	    for (i = 0; i < 3; i++)
		(vel1)[i] = (((q)->vel))[i] + (dvel)[i];
	};
	; {
	    int i;
	    for (i = 0; i < 3; i++)
		(dpos)[i] = (vel1)[i] * (0.0125);
	};
	; {
	    int i;
	    for (i = 0; i < 3; i++)
		(dpos)[i] = (((q)->pos))[i] + (dpos)[i];
	};
	; {
	    int i;
	    for (i = 0; i < 3; i++)
		(((q)->pos))[i] = (dpos)[i];
	};
	; {
	    int i;
	    for (i = 0; i < 3; i++)
		(((q)->vel))[i] = (vel1)[i] + (dvel)[i];
	};
	{
	    real p0, p1, p2;
	    p0 = ((q)->pos)[0];
	    p1 = ((q)->pos)[1];
	    p2 = ((q)->pos)[2];
	    if (!(!0)) {
		printf("Assertion Failure #%d", (69));
		exit(0);
	    };
	    if (!(!0)) {
		printf("Assertion Failure #%d", (68));
		exit(0);
	    };
	    if (!(!0)) {
		printf("Assertion Failure #%d", (67));
		exit(0);
	    };
	    if (!(((p0 > 0) ? (p0) : (-p0)) < 10000.0)) {
		printf("Assertion Failure #%d", (66));
		exit(0);
	    };
	    if (!(((p1 > 0) ? (p1) : (-p1)) < 10000.0)) {
		printf("Assertion Failure #%d", (65));
		exit(0);
	    };
	    if (!(((p2 > 0) ? (p2) : (-p2)) < 10000.0)) {
		printf("Assertion Failure #%d", (64));
		exit(0);
	    };

	}
    }

    ;;
}




void gravstep(real rsize, nodeptr rt, bodyptr p, int nstep, real dthf)
{

    hackgrav(p, rsize, rt);
}






void hackgrav(bodyptr p, real rsize, nodeptr rt)
{
    hgstruct hg;
    real szsq;

    ;;
    hg.pskip = p;
    ; {
	int i;
	for (i = 0; i < 3; i++)
	    (hg.pos0)[i] = (((p)->pos))[i];
    };
    hg.phi0 = 0.0;
    ; {
	int i;
	for (i = 0; i < 3; i++)
	    (hg.acc0)[i] = 0.0;
    };
    szsq = rsize * rsize;
    hg = walksub(rt, szsq, 1.00 * 1.00, hg, 0);
    ((p)->phi) = hg.phi0;

    ; {
	int i;
	for (i = 0; i < 3; i++)
	    (((p)->new_acc))[i] = (hg.acc0)[i];
    };
    ;;
}





hgstruct gravsub(nodeptr p, hgstruct hg)
{
    real drabs, phii, mor3;
    vector ai, quaddr;
    real dr5inv, phiquad, drquaddr;
    vector dr;
    real drsq;


    ; {
	int i;
	for (i = 0; i < 3; i++)
	    (dr)[i] = (((p)->pos))[i] - (hg.pos0)[i];
    };
    ; {
	int i;
	(drsq) = 0.0;
	for (i = 0; i < 3; i++)
	    (drsq) += (dr)[i] * (dr)[i];
    };

    drsq += 0.05 * 0.05;
    drabs = sqrt((double) drsq);
    phii = ((p)->mass) / drabs;
    hg.phi0 -= phii;
    mor3 = phii / drsq;
    ; {
	int i;
	for (i = 0; i < 3; i++)
	    (ai)[i] = (dr)[i] * (mor3);
    };
    ; {
	int i;
	for (i = 0; i < 3; i++)
	    (hg.acc0)[i] = (hg.acc0)[i] + (ai)[i];
    };

    if (((p)->type) == 02) {
# 1090 "bh.c"
    }

    return hg;
}

# 1114 "bh.c"
bool subdivp(nodeptr p, real dsq, real tolsq, hgstruct hg)
{
    nodeptr local_p;
    vector dr;
    vector pos;
    real drsq;

    local_p = (nodeptr) p;
    if (((local_p)->type) == 01)

	return (0);

    ; {
	int i;
	for (i = 0; i < 3; i++)
	    (dr)[i] = (((local_p)->pos))[i] - (hg.pos0)[i];
    };
    ; {
	int i;
	(drsq) = 0.0;
	for (i = 0; i < 3; i++)
	    (drsq) += (dr)[i] * (dr)[i];
    };


    return (tolsq * drsq < dsq);
}

# 1150 "bh.c"
static cellptr ctab = 0;
static int maxcell;




bodyptr body_alloc(int p, real p0, real p1, real p2, real v0, real v1,
		   real v2, real a0, real a1, real a2, real mass,
		   bodyptr ob);
bodyptr ubody_alloc(int p);
cellptr cell_alloc(int p);

typedef struct {
    nodeptr tp;
    int num;
} dtstruct;

typedef struct {
    nodeptr tp;
    int num;
    int proc;
} dt1struct;


nodeptr loadtree(bodyptr p, icstruct xpic, nodeptr t, int l, treeptr tr);
void expandbox(bodyptr p, treeptr t, int nsteps, int proc);
icstruct intcoord1(double rp0, double rp1, double rp2, treeptr t);
icstruct intcoord(bodyptr p, treeptr t);
int ic_test(bodyptr p, treeptr t);
int subindex(bodyptr p, treeptr t, int l);
int old_subindex(icstruct ic, int l);
real hackcofm(nodeptr q);


int dis2_number(nodeptr n, int prev_bodies, int tnperproc);
void dis_number(nodeptr n);





nodeptr maketree(bodyptr btab, int nb, treeptr t, int nsteps, int proc)
{
    bodyptr q;
    int tmp;
    nodeptr node1;
    icstruct xqic;
    int holder;

    ((t)->root) = 0;
    nbody = nb;


    for (tmp = NumNodes - 1; tmp >= 0; tmp--) {
	btab = t->bodiesperproc[tmp];





	for (q = btab; q != 0; q = ((q)->proc_next)) {
	    if (((q)->mass) != 0.0) {
		expandbox(q, t, nsteps, proc);
		xqic = intcoord(q, t);
		node1 = ((t)->root);
		node1 =
		    loadtree(q, xqic, node1,
			     (1 << (8 * sizeof(int) - 2)) >> 1, t);
		((t)->root) = node1;

	    }
	}
    }




    hackcofm(((t)->root));



    return ((t)->root);
}

# 1241 "bh.c"
void expandbox(bodyptr p, treeptr t, int nsteps, int proc)
{
    icstruct ic;
    int k;
    vector rmid;
    cellptr newt;
    tree tmp;
    real rsize;
    int inbox;

    inbox = ic_test(p, t);
    while (!inbox) {
	rsize = ((t)->rsize);

	if (!(rsize < 1000.0)) {
	    printf("Assertion Failure #%d", (999));
	    exit(0);
	};
	; {
	    int i;
	    for (i = 0; i < 3; i++)
		(rmid)[i] = (((t)->rmin))[i] + (0.5 * rsize);
	};
# 1269 "bh.c"
	for (k = 0; k < 3; k++)
	    if (((p)->pos)[k] < rmid[k]) {
		real rmin;
		rmin = ((t)->rmin)[k];
		((t)->rmin)[k] = rmin - rsize;
	    }

	((t)->rsize) = 2.0 * rsize;


	rsize = ((t)->rsize);

	if (((t)->root) != 0) {
	    int i;
	    newt = cell_alloc(0);

	    ic = intcoord1(rmid[0], rmid[1], rmid[2], t);

	    if (!(ic.inb)) {
		printf("Assertion Failure #%d", (1));
		exit(0);
	    };
	    k = old_subindex(ic, (1 << (8 * sizeof(int) - 2)) >> 1);
	    ((newt)->subp)[k] = ((t)->root);
	    ((t)->root) = (nodeptr) newt;
	    inbox = ic_test(p, t);
	}
    }
}

# 1350 "bh.c"
nodeptr loadtree(bodyptr p, icstruct xpic, nodeptr t, int l, treeptr tr)
{
    int si;
    cellptr c;
    nodeptr rt;

    if (t == 0) {
	return ((nodeptr) p);
    } else {
	if (!(l != 0)) {
	    printf("Assertion Failure #%d", (2));
	    exit(0);
	};
	if (((t)->type) == 01) {
	    int i, j;
	    icstruct pic, tic;



	    i = 0;
	    c = (cellptr) cell_alloc(i);
	    si = subindex((bodyptr) t, tr, l);

	    ((c)->subp)[si] = (nodeptr) t;
	    t = (nodeptr) c;
	}

	si = old_subindex(xpic, l);
	rt = (((cellptr) t)->subp)[si];
	(((cellptr) t)->subp)[si] = loadtree(p, xpic, rt, l >> 1, tr);
    }
    return (t);
}







icstruct intcoord1(double rp0, double rp1, double rp2, treeptr t)
{

    double xsc;

    icstruct ic;






    ic.inb = 1;

    xsc = (rp0 - t->rmin[0]) / t->rsize;
    if (0.0 <= xsc && xsc < 1.0)
	ic.xp[0] = ((double) ((int) ((1 << (8 * sizeof(int) - 2)) * xsc)));
    else {

	ic.inb = 0;
    }

    xsc = (rp1 - t->rmin[1]) / t->rsize;
    if (0.0 <= xsc && xsc < 1.0)
	ic.xp[1] = ((double) ((int) ((1 << (8 * sizeof(int) - 2)) * xsc)));
    else {

	ic.inb = 0;
    }


    xsc = (rp2 - t->rmin[2]) / t->rsize;
    if (0.0 <= xsc && xsc < 1.0)
	ic.xp[2] = ((double) ((int) ((1 << (8 * sizeof(int) - 2)) * xsc)));
    else {

	ic.inb = 0;
    }


    return (ic);
}







icstruct intcoord(bodyptr p, treeptr t)
{
    double xsc;

    icstruct ic;
    real rsize;
    vector pos;


    ic.inb = 1;
    rsize = t->rsize;

    pos[0] = ((p)->pos)[0];
    pos[1] = ((p)->pos)[1];
    pos[2] = ((p)->pos)[2];



    xsc = (pos[0] - t->rmin[0]) / rsize;
    if (0.0 <= xsc && xsc < 1.0)
	ic.xp[0] = ((double) ((int) ((1 << (8 * sizeof(int) - 2)) * xsc)));
    else
	ic.inb = 0;


    xsc = (pos[1] - t->rmin[1]) / rsize;
    if (0.0 <= xsc && xsc < 1.0)
	ic.xp[1] = ((double) ((int) ((1 << (8 * sizeof(int) - 2)) * xsc)));
    else
	ic.inb = 0;


    xsc = (pos[2] - t->rmin[2]) / rsize;
    if (0.0 <= xsc && xsc < 1.0)
	ic.xp[2] = ((double) ((int) ((1 << (8 * sizeof(int) - 2)) * xsc)));
    else
	ic.inb = 0;



    return (ic);
}


int ic_test(bodyptr p, treeptr t)
{

    double xsc, rsize;
    int result;
    vector pos;

    result = 1;

    pos[0] = ((p)->pos)[0];
    pos[1] = ((p)->pos)[1];
    pos[2] = ((p)->pos)[2];
    rsize = t->rsize;

    xsc = (pos[0] - t->rmin[0]) / rsize;
    if (!(0.0 <= xsc && xsc < 1.0))
	result = 0;


    xsc = (pos[1] - t->rmin[1]) / rsize;
    if (!(0.0 <= xsc && xsc < 1.0))
	result = 0;


    xsc = (pos[2] - t->rmin[2]) / rsize;
    if (!(0.0 <= xsc && xsc < 1.0))
	result = 0;
# 1518 "bh.c"
    return (result);
}

# 1528 "bh.c"
int subindex(bodyptr p, treeptr t, int l)
{
    int i, k;
    real rsize;

    double xsc;
    int xp[3];
    vector pos;

    pos[0] = ((p)->pos)[0];
    pos[1] = ((p)->pos)[1];
    pos[2] = ((p)->pos)[2];

    rsize = t->rsize;

    xsc = (pos[0] - t->rmin[0]) / rsize;
    if (!((0.0 <= xsc) && (xsc < 1.0))) {
	printf("Assertion Failure #%d", (5));
	exit(0);
    };
    xp[0] = ((double) ((int) ((1 << (8 * sizeof(int) - 2)) * xsc)));

    xsc = (pos[1] - t->rmin[1]) / rsize;
    if (!((0.0 <= xsc) && (xsc < 1.0))) {
	printf("Assertion Failure #%d", (6));
	exit(0);
    };
    xp[1] = ((double) ((int) ((1 << (8 * sizeof(int) - 2)) * xsc)));

    xsc = (pos[2] - t->rmin[2]) / rsize;
    if (!((0.0 <= xsc) && (xsc < 1.0))) {
	printf("Assertion Failure #%d", (7));
	exit(0);
    };
    xp[2] = ((double) ((int) ((1 << (8 * sizeof(int) - 2)) * xsc)));


    i = 0;
    for (k = 0; k < 3; k++)
	if (xp[k] & l)
	    i += (1 << 3) >> (k + 1);

    return (i);
}



int old_subindex(icstruct ic, int l)
{
    int i, k;

    i = 0;
    for (k = 0; k < 3; k++)
	if (ic.xp[k] & l)
	    i += (1 << 3) >> (k + 1);
    return (i);
}






real hackcofm(nodeptr q)
{
    int i;
    nodeptr r;



    vector tmpv;
    vector tmp_pos;
    real mq, mr;





    if (((q)->type) == 02) {
	mq = 0.0;
	; {
	    int i;
	    for (i = 0; i < 3; i++)
		(tmp_pos)[i] = 0.0;
	};

	for (i = 0; i < (1 << 3); i++) {
	    r = (((cellptr) q)->subp)[i];
	    if (r != 0) {
		mr = hackcofm(r);
		mq = mr + mq;
		; {
		    int i;
		    for (i = 0; i < 3; i++)
			(tmpv)[i] = (((r)->pos))[i] * (mr);
		};
		; {
		    int i;
		    for (i = 0; i < 3; i++)
			(tmp_pos)[i] = (tmp_pos)[i] + (tmpv)[i];
		};
	    }
	}
# 1633 "bh.c"
	((q)->mass) = mq;
	;;
	((q)->pos)[0] = tmp_pos[0];
	((q)->pos)[1] = tmp_pos[1];
	((q)->pos)[2] = tmp_pos[2];
	; {
	    int i;
	    for (i = 0; i < 3; i++)
		(((q)->pos))[i] = (((q)->pos))[i] / (((q)->mass));
	};
	;;


	return mq;
    }


    mq = ((q)->mass);






    return mq;
}




void printtree(nodeptr n)
{
    ptree(n, 0);
}

void ptree(nodeptr n, int level)
{
    nodeptr r;


    if (n != 0) {
	if (((n)->type) == 01) {

	} else {

	    int i;


	    for (i = 0; i < (1 << 3); i++) {
		r = (((cellptr) n)->subp)[i];
		ptree(r, level + 1);
	    }
	}
    } else
	printf("%d NULL TREE\n", level);
}



typedef struct {
    int bits;
    int split;
    cellptr new;
    nodeptr non_local[(1 << 3)];
} dt3_struct;


void dis_number(nodeptr n)
{
    int tnperproc =
	(int) ((double) (((int) ((double) nbody / NumNodes)) + 1));

    dis2_number(n, -1, tnperproc);
}

int dis2_number(nodeptr n, int prev_bodies, int tnperproc)
{

    if (n == 0)
	return prev_bodies;

    else if (((n)->type) == 01) {
	((n)->new_proc) = (prev_bodies + 1) / tnperproc;
	return prev_bodies + 1;
    }

    else {
	int i;
	nodeptr r;


	for (i = 0; i < (1 << 3); i++) {
	    r = (((cellptr) n)->subp)[i];
	    prev_bodies = dis2_number(r, prev_bodies, tnperproc);
	}

	;;
	return prev_bodies;
    }
}
