#include "../include/stdio.h"
#include "../include/stdlib.h"
int flag = 1;


typedef struct future_cell_int {
    int value;
} future_cell_int;

typedef struct node {
    int value;
    struct node *left;
    struct node *right;
}HANDLE;

int dealwithargs(int argc, char *argv[]);
HANDLE *RandTree();
void SwapValue();
void SwapValLeft();
void SwapValRight();
int Bimerge();
int Bisort();


void InOrder(h)
HANDLE *h;
{
    HANDLE *l, *r;
    if ((h != ((HANDLE *) 0))) {
	l = h->left;
	r = h->right;
	InOrder(l);
	printf("%d @ 0x%x\n", h->value, h);
	InOrder(r);
    }
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
    int tmp;
    //srand(seed);
    //tmp = rand();
    tmp = (mult(seed, 31415821) + 1);
    return tmp;
}

void SwapValue(l, r)
HANDLE *l;
HANDLE *r;

{
    int temp, temp2;

    temp = l->value;
    temp2 = r->value;
    r->value = temp;
    l->value = temp2;
}

void SwapValLeft(l, r, ll, rl, lval, rval)
HANDLE *l;
HANDLE *r;
HANDLE *ll;
HANDLE *rl;
int lval, rval;
{
    r->value = lval;

    r->left = ll;
    l->left = rl;



    l->value = rval;
}


void SwapValRight(l, r, lr, rr, lval, rval)
HANDLE *l;
HANDLE *r;
HANDLE *lr;
HANDLE *rr;
int lval, rval;
{
    r->value = lval;

    r->right = lr;
    l->right = rr;



    l->value = rval;

}

int Bimerge(root, spr_val, dir)
HANDLE *root;
int spr_val, dir;

{
    int rightexchange;
    int elementexchange;
    int temp;
    HANDLE *pl, *pll, *plr;
    HANDLE *pr, *prl, *prr;
    HANDLE *rl;
    HANDLE *rr;



    int rv, lv;



    rv = root->value;
    ;
    pl = root->left;
    pr = root->right;
    rightexchange = ((rv > spr_val) ^ dir);
    if (rightexchange) {
	root->value = spr_val;
	spr_val = rv;
    };

    while ((pl != ((HANDLE *) 0))) {

	lv = pl->value;
	;
	pll = pl->left;
	plr = pl->right;
	;
	rv = pr->value;
	;
	prl = pr->left;
	prr = pr->right;
	;
	elementexchange = ((lv > rv) ^ dir);
	if (rightexchange)
	    if (elementexchange) {
		SwapValRight(pl, pr, plr, prr, lv, rv);
		pl = pll;
		pr = prl;
	    } else {
		pl = plr;
		pr = prr;
	} else if (elementexchange) {
	    SwapValLeft(pl, pr, pll, prl, lv, rv);
	    pl = plr;
	    pr = prr;
	} else {
	    pl = pll;
	    pr = prl;
	}
    }
    if ((root->left != ((HANDLE *) 0))) {
	future_cell_int f_left;
	int value;
	;
	rl = root->left;
	rr = root->right;
	value = root->value;
	root->value = Bimerge(rl, value, dir);
	spr_val = Bimerge(rr, spr_val, dir);

	;
    }

    return spr_val;
}

int Bisort(root, spr_val, dir)
HANDLE *root;
int spr_val, dir;
{
    HANDLE *l;
    HANDLE *r;
    int val;

    if ((root->left == ((HANDLE *) 0))) {
	;
	if (((root->value > spr_val) ^ dir)) {
	    val = spr_val;
	    spr_val = root->value;
	    root->value = val;
	};
    } else {
	future_cell_int f_left;
	int ndir;
	l = root->left;
	r = root->right;
	val = root->value;
	root->value = Bisort(l, val, dir);
	ndir = !dir;
	spr_val = Bisort(r, spr_val, ndir);

	spr_val = Bimerge(root, spr_val, dir);
	;
    }

    return spr_val;
}

void main(argc, argv)
int argc;
char *argv[];
{
    HANDLE *h;
    int sval;
    int n;

    n = dealwithargs(argc, argv);
    printf("Bisort with %d size\n", n);
    h = RandTree(n, 12345768);

    sval = random(245867) % 100;
    if (flag) {
	InOrder(h);
	printf("%d\n", sval);
    }
    printf("**************************************\n");
    printf("BEGINNING BITONIC SORT ALGORITHM HERE\n");
    printf("**************************************\n");
    sval = Bisort(h, sval, 0);
    if (flag) {
	printf("Sorted Tree:\n");
	InOrder(h);
	printf("%d\n", sval);
    }
    sval = Bisort(h, sval, 1);
    if (flag) {
	printf("Sorted Tree:\n");
	InOrder(h);
	printf("%d\n", sval);
    }
    return ;
}


int dealwithargs(int argc, char *argv[])
{
    int size;

    if (argc > 3){
	//flag = atoi(argv[3]);
    }else{
	flag = 1;
    }

    if (argc > 1){
	//size = atoi(argv[1]);
    }else{
	size = 512;
    }
    return size;

}

HANDLE *RandTree(n, seed)
int n, seed;
{
    int next_val;
    future_cell_int f_left, f_right;
    HANDLE *h;
    if (n > 1) {
	seed = random(seed);
	next_val = seed % 100;
	h = (HANDLE *) malloc(sizeof(struct node));;
	h->value = next_val;
	h->left = ((HANDLE *) 0);
	h->right = ((HANDLE *) 0);;
	f_left.value = (int) RandTree((n / 2), seed);
	f_right.value = (int) RandTree((n / 2), skiprand(seed, n + 1));
	h->left = (HANDLE *) f_left.value;
	h->right = (HANDLE *) f_right.value;
    } else
	h = ((HANDLE *) 0);
    return h;
}

