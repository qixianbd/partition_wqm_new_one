
#include "../include/stdio.h"
#include "../include/stdlib.h"
#include "../include/math.h"


int NumNodes, NDim;
int flag;

int mylog(int num)
{
  int j=0,k=1;

  while(k<num) { k*=2; j++; }
  return j;
}

int dealwithargs(int argc, char *argv[])
{
  int num;

  if (argc > 3){
    //flag = atoi(argv[3]);
  }else{
    flag = 0;
  }

  if (argc > 2){
    //NumNodes = atoi(argv[2]);
  }else{
    NumNodes = 1;
  }

  NDim = mylog(NumNodes);

  if (argc > 1){
    //num = atoi(argv[1]);
  }else{
    num = 100;
  }

  return num;
}
# 72 "tsp.c"
# 1 "tsp.h" 1




extern int NumNodes, NDim;


extern int flag;



typedef struct tree {
  int sz;
  double x,y;
  struct tree *left, *right;

  struct tree *next, *prev;




} *Tree;
# 35 "tsp.h"
Tree build_tree(int n,int dir,int lo,int num_proc,double min_x,
                double max_x,double min_y,double max_y);

Tree tsp(Tree t, int sz, int nproc);
# 73 "tsp.c" 2




double drand48(void)
{
 return (double)rand()/RAND_MAX;
}

static double median(double min,double max,int n);
static double uniform(double min, double max);


static double median(double min,double max,int n) {
  double t;
  double retval;

  t = drand48();
  if (t>0.5) {
    retval=log(1.0-(2.0*(162754.79141900392083592475 -1)*(t-0.5)/162754.79141900392083592475))/12.0;
    }
  else {
    retval=-log(1.0-(2.0*(162754.79141900392083592475 -1)*t/162754.79141900392083592475))/12.0;
    }

  retval = (retval+1.0) * (max-min)/2.0;
  retval = retval + min;
  return retval;
}


static double uniform(double min, double max) {
  double retval;

  retval = drand48();
  retval = retval * (max-min);
  return retval + min;
}



Tree build_tree(int n,int dir,int lo,int num_proc,double min_x,
                double max_x,double min_y,double max_y) {
  double med;
  Tree t;




  if (n==0) return 0;

  t = (Tree) malloc(sizeof(*t));

  if (dir) {
    dir = !dir;
    med = median(min_x,max_x,n);

    t->left=build_tree(n/2,dir,lo+num_proc/2,num_proc/2,min_x,med,min_y,max_y);
    t->right=build_tree(n/2,dir,lo,num_proc/2,med,max_x,min_y,max_y);





    t->x = med;
    t->y = uniform(min_y,max_y);
    }
  else {
    dir = !dir;
    med = median(min_y,max_y,n);

    t->left=build_tree(n/2,dir,lo+num_proc/2,num_proc/2,min_x,max_x,min_y,med);
    t->right=build_tree(n/2,dir,lo,num_proc/2,min_x,max_x,med,max_y);





    t->y = med;
    t->x = uniform(min_x,max_x);
    }
  t->sz = n;
  t->next = 0;
  t->prev = 0;




  return t;
}
# 172 "tsp.c"
static Tree conquer(Tree t);
static Tree merge(Tree a, Tree b, Tree t, int nproc);
static Tree makelist(Tree t);
static void reverse(Tree t);
static double distance(Tree a, Tree b);
extern double sqrt(double a);


static double distance(Tree a, Tree b) {
  double ax,ay,bx,by;

  ax = a->x; ay = a->y;
  bx = b->x; by = b->y;
  return (sqrt((ax-bx)*(ax-bx)+(ay-by)*(ay-by)));
}



static Tree makelist(Tree t) {
  Tree left, right;
  Tree tleft,tright;
  Tree retval = t;

  if (!t) return 0;

  left = makelist(t->left);
  right = makelist(t->right);

  if (right) { retval = right; tright = t->right; tright->next = t; }
  if (left) { retval=left; tleft=t->left; tleft->next = (right) ? right : t; }
  t->next = 0;

  return retval;
}


static void reverse(Tree t) {
  Tree prev,back,next,tmp;

  if (!t) return;


  prev = t->prev;
  prev->next = 0;
  t->prev = 0;
  back = t;
  tmp = t;
  for (t=t->next; t; back=t,t=next) {
    next = t->next;
    t->next = back;
    back->prev = t;
    }
  tmp->next = prev;
  prev->prev = tmp;



}


static Tree conquer(Tree t) {
  Tree cycle,tmp,min,prev,next,donext;
  double mindist,test;
  double mintonext, mintoprev, ttonext, ttoprev;

  if (!t) return 0;
  t=makelist(t);



  cycle = t;
  t = t->next;
  cycle->next = cycle;
  cycle->prev = cycle;

  for (; t; t=donext) {
    donext = t->next;
    min = cycle;
    mindist = distance(t,cycle);
    for (tmp=cycle->next; tmp!=cycle; tmp=tmp->next) {
      test = distance(tmp,t);
      if (test < mindist) {
        mindist = test;
        min = tmp;
        }
      }
    next = min->next;
    prev = min->prev;
    mintonext = distance(min,next);
    mintoprev = distance(min,prev);
    ttonext = distance(t,next);
    ttoprev = distance(t,prev);
    if ((ttoprev - mintoprev) < (ttonext - mintonext)) {

      prev->next = t;
      t->next = min;
      t->prev = prev;
      min->prev = t;
      }
    else {
      next->prev = t;
      t->next = next;
      min->next = t;
      t->prev = min;
      }
    }


  return cycle;
}


static Tree merge(Tree a, Tree b, Tree t, int nproc) {
  Tree min,next,prev,tmp;
  double mindist,test,mintonext,mintoprev,ttonext,ttoprev;
  Tree n1,p1,n2,p2;
  double tton1,ttop1,tton2,ttop2;
  double n1ton2,n1top2,p1ton2,p1top2;
  int choice;
  int i;


  min = a;
  mindist = distance(t,a);
  tmp = a;
  for (a=a->next; a!=tmp; a=a->next) {
    test = distance(a,t);
    if (test < mindist) {
      mindist = test;
      min = a;
      }
    }
  next = min->next;
  prev = min->prev;
  mintonext = distance(min,next);
  mintoprev = distance(min,prev);
  ttonext = distance(t,next);
  ttoprev = distance(t,prev);
  if ((ttoprev - mintoprev) < (ttonext - mintonext)) {

    p1 = prev;
    n1 = min;
    tton1 = mindist;
    ttop1 = ttoprev;
    }
  else {
    p1 = min;
    n1 = next;
    ttop1 = mindist;
    tton1 = ttonext;
    }


  min = b;
  mindist = distance(t,b);
  tmp = b;
  for (b=b->next; b!=tmp; b=b->next) {
    test = distance(b,t);
    if (test < mindist) {
      mindist = test;
      min = b;
      }
    }
  next = min->next;
  prev = min->prev;
  mintonext = distance(min,next);
  mintoprev = distance(min,prev);
  ttonext = distance(t,next);
  ttoprev = distance(t,prev);
  if ((ttoprev - mintoprev) < (ttonext - mintonext)) {

    p2 = prev;
    n2 = min;
    tton2 = mindist;
    ttop2 = ttoprev;
    }
  else {
    p2 = min;
    n2 = next;
    ttop2 = mindist;
    tton2 = ttonext;
    }






  n1ton2 = distance(n1,n2);
  n1top2 = distance(n1,p2);
  p1ton2 = distance(p1,n2);
  p1top2 = distance(p1,p2);

  mindist = ttop1+ttop2+n1ton2;
  choice = 1;

  test = ttop1+tton2+n1top2;
  if (test<mindist) {
    choice = 2;
    mindist = test;
    }

  test = tton1+ttop2+p1ton2;
  if (test<mindist) {
    choice = 3;
    mindist = test;
    }

  test = tton1+tton2+p1top2;
  if (test<mindist) choice = 4;


  switch (choice) {
    case 1:


      reverse(n2);
      p1->next = t;
      t->prev = p1;
      t->next = p2;
      p2->prev = t;
      n2->next = n1;
      n1->prev = n2;
      break;
    case 2:

      p1->next = t;
      t->prev = p1;
      t->next = n2;
      n2->prev = t;
      p2->next = n1;
      n1->prev = p2;
      break;
    case 3:

      p2->next = t;
      t->prev = p2;
      t->next = n1;
      n1->prev = t;
      p1->next = n2;
      n2->prev = p1;
      break;
    case 4:


      reverse(n1);
      n1->next = t;
      t->prev = n1;
      t->next = n2;
      n2->prev = t;
      p2->next = p1;
      p1->prev = p2;
      break;
    }
  return t;
}


Tree tsp(Tree t,int sz,int nproc) {
  Tree left,right;
  Tree leftval;



  Tree rightval;
  int nproc_2 = nproc/2;

  if (t->sz <= sz) return conquer(t);

  left = t->left; right = t->right;

  leftval = tsp(left,sz,nproc_2);



  rightval = tsp(right,sz,nproc_2);





  return merge(leftval,rightval,t,nproc);

}






extern int flag;

void print_tree(Tree t)
{
  Tree left,right;

  double x,y;

  if (!t) return;
  x = t->x; y = t->y;
  printf("x=%f,y=%f\n",x,y);
  left = t->left; right=t->right;
  print_tree(left);
  print_tree(right);
}

void print_list(Tree t)
{
  Tree tmp;
  double x,y;

  if (!t) return;
  x = t->x; y = t->y;
  printf("%f %f\n",x,y);
  for (tmp=t->next; tmp!=t; tmp=tmp->next)
    {
    x = tmp->x; y = tmp->y;
    printf("%f %f\n",x,y);
    }
}

int main(int argc,char *argv[])
{
  Tree t;
  int num;




  num=dealwithargs(argc,argv);

  printf("Building tree of size %d\n",num);
  t=build_tree(num,0,0,NumNodes,0.0,1.0,0.0,1.0);
  if (!flag) printf("Past build\n");
  if (flag) printf("newgraph\n");
  if (flag) printf("newcurve pts\n");


  printf("Call tsp(t, %d, %d)\n", 150, NumNodes);
  tsp(t,150, NumNodes);




  if (flag) print_list(t);
  if (flag) printf("linetype solid\n");




}
