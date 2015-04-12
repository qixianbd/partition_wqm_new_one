#include "../include/stdio.h"
#include "../include/stdlib.h"






extern int NumNodes;
# 17 "perimeter.h"
typedef enum { black, white, grey } Color;
typedef enum { northwest, northeast, southwest, southeast } ChildType;
typedef enum { north, east, south, west } Direction;


typedef struct quad_struct {
    Color color;
    ChildType childtype;
# 33 "perimeter.h"
    struct quad_struct *nw;
    struct quad_struct *ne;
    struct quad_struct *sw;
    struct quad_struct *se;
    struct quad_struct *parent;


} quad_struct, *QuadTree;


QuadTree MakeTree(int size, int center_x, int center_y, int lo_proc,
		  int hi_proc, QuadTree parent, ChildType ct, int level);
# 7 "perimeter.c" 2
# 16 "perimeter.c"
int NumNodes;
# 29 "perimeter.c"
int dealwithargs(int argc, char *argv[])
{
    int level;
    NumNodes = 10;
    level = 4;

    return level;

}



static int CheckOutside(int x, int y)
{
    int euclid = x * x + y * y;

    if (euclid > 4194304)
	return 1;
    if (euclid < 1048576)
	return -1;
    return 0;
}

static int CheckIntersect(int center_x, int center_y, int size)
{
    int sum;

    if (!CheckOutside(center_x + size, center_y + size) &&
	!CheckOutside(center_x + size, center_y - size) &&
	!CheckOutside(center_x - size, center_y - size) &&
	!CheckOutside(center_x - size, center_y + size))
	return 2;
    sum = CheckOutside(center_x + size, center_y + size) +
	CheckOutside(center_x + size, center_y - size) +
	CheckOutside(center_x - size, center_y - size) +
	CheckOutside(center_x - size, center_y + size);
    if ((sum == 4) || (sum == -4))
	return 0;
    return 1;
}

QuadTree MakeTree(int size, int center_x, int center_y, int lo_proc,
		  int hi_proc, QuadTree parent, ChildType ct, int level)
{
    int intersect = 0;
    QuadTree retval;




    retval = (QuadTree) malloc(sizeof(*retval));

    retval->parent = parent;
    retval->childtype = ct;

    intersect = CheckIntersect(center_x, center_y, size);
    size = size / 2;
    if ((intersect == 0) && (size < 512)) {
	retval->color = white;
	retval->nw = 0;
	retval->ne = 0;
	retval->sw = 0;
	retval->se = 0;
    } else if (intersect == 2) {
	retval->color = black;
	retval->nw = 0;
	retval->ne = 0;
	retval->sw = 0;
	retval->se = 0;
    } else {
	if (!level) {
	    retval->color = black;
	    retval->nw = 0;
	    retval->ne = 0;
	    retval->sw = 0;
	    retval->se = 0;
	} else {
	    int mid1, mid2;




	    mid1 = (lo_proc + hi_proc) / 2;
	    mid2 = (lo_proc + hi_proc + 1) / 2;


	    retval->sw = MakeTree(size, center_x - size, center_y - size,
				  (mid2 + hi_proc + 1) / 2, hi_proc,
				  retval, southwest, level - 1);
	    retval->se =
		MakeTree(size, center_x + size, center_y - size, mid2,
			 (mid2 + hi_proc) / 2, retval, southeast,
			 level - 1);
	    retval->ne =
		MakeTree(size, center_x + size, center_y + size,
			 (lo_proc + mid1 + 1) / 2, mid1, retval, northeast,
			 level - 1);
	    retval->nw =
		MakeTree(size, center_x - size, center_y + size, lo_proc,
			 (lo_proc + mid1) / 2, retval, northwest,
			 level - 1);
# 172 "perimeter.c"
	    retval->color = grey;
	}
    }
    return retval;
}






static int adj(Direction d, ChildType ct)
{
    switch (d) {
    case north:
	return ((ct == northeast) || (ct == northwest));
    case south:
	return ((ct == southeast) || (ct == southwest));
    case east:
	return ((ct == northeast) || (ct == southeast));
    case west:
	return ((ct == southwest) || (ct == northwest));
    }
}

static ChildType reflect(Direction d, ChildType ct)
{
    if ((d == west) || (d == east)) {
	switch (ct) {
	case northwest:
	    return northeast;
	case northeast:
	    return northwest;
	case southeast:
	    return southwest;
	case southwest:
	    return southeast;





	}
    }
    switch (ct) {
    case northwest:
	return southwest;
    case northeast:
	return southeast;
    case southeast:
	return northeast;
    case southwest:
	return northwest;





    }
}

int CountTree(QuadTree tree)
{
    QuadTree nw, ne, sw, se;

    nw = tree->nw;
    ne = tree->ne;
    sw = tree->sw;
    se = tree->se;
    if (nw == 0 && ne == 0 && sw == 0 && se == 0)
	return 1;
    else
	return CountTree(nw) + CountTree(ne) + CountTree(sw) +
	    CountTree(se);
}

static QuadTree child(QuadTree tree, ChildType ct)
{
    switch (ct) {
    case northeast:
	return tree->ne;
    case northwest:
	return tree->nw;
    case southeast:
	return tree->se;
    case southwest:
	return tree->sw;





    }
}

static QuadTree gtequal_adj_neighbor(QuadTree tree, Direction d)
{
    QuadTree q, parent;
    ChildType ct;

    parent = tree->parent;
    ct = tree->childtype;
    if ((parent != 0) && adj(d, ct))
	q = gtequal_adj_neighbor(parent, d);
    else
	q = parent;
    if (q && q->color == grey) {
	return child(q, reflect(d, ct));
    } else
	return q;
}

static int sum_adjacent(QuadTree p, ChildType q1, ChildType q2, int size)
{
    if (p->color == grey) {
	return sum_adjacent(child(p, q1), q1, q2, size / 2) +
	    sum_adjacent(child(p, q2), q1, q2, size / 2);
    } else if (p->color == white) {
	return size;
    } else
	return 0;
}

int perimeter(QuadTree tree, int size)
{
    int retval = 0;
    QuadTree neighbor;

    if (tree->color == grey) {
	QuadTree child;





	child = tree->sw;
	retval += perimeter(child, size / 2);
	child = tree->se;
	retval += perimeter(child, size / 2);
	child = tree->ne;
	retval += perimeter(child, size / 2);
	child = tree->nw;
	retval += perimeter(child, size / 2);
# 334 "perimeter.c"
    } else if (tree->color == black) {

	neighbor = gtequal_adj_neighbor(tree, north);
	if ((neighbor == 0) || (neighbor->color == white))
	    retval += size;
	else if (neighbor->color == grey)
	    retval += sum_adjacent(neighbor, southeast, southwest, size);

	neighbor = gtequal_adj_neighbor(tree, east);
	if ((neighbor == 0) || (neighbor->color == white))
	    retval += size;
	else if (neighbor->color == grey)
	    retval += sum_adjacent(neighbor, southwest, northwest, size);

	neighbor = gtequal_adj_neighbor(tree, south);
	if ((neighbor == 0) || (neighbor->color == white))
	    retval += size;
	else if (neighbor->color == grey)
	    retval += sum_adjacent(neighbor, northwest, northeast, size);

	neighbor = gtequal_adj_neighbor(tree, west);
	if ((neighbor == 0) || (neighbor->color == white))
	    retval += size;
	else if (neighbor->color == grey)
	    retval += sum_adjacent(neighbor, northeast, southeast, size);
    }
    return retval;
}

extern int dealwithargs(int argc, char *argv[]);

int main(int argc, char *argv[])
{
    QuadTree tree;
    int count;
    int level;
    level = dealwithargs(argc, argv);
    printf("Perimeter with %d levels on %d processors\n", level, NumNodes);
    tree = MakeTree(2048, 0, 0, 0, NumNodes - 1, 0, southeast, level);
    count = CountTree(tree);
    printf("# of leaves is %d\n", count);
    count = perimeter(tree, 4096);
    printf("perimeter is %d\n", count);
    exit(0);
}
