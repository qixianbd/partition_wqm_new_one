# 1 "health.c"
# 1 "<built-in>"
# 1 "<命令行>"
# 1 "health.c"
# 11 "health.c"
# 1 "health.h" 1
# 27 "health.h"


#include "../include/stdio.h"
#include "../include/stdlib.h"
#include "../include/math.h"

int max_level;
long max_time,
                         seed;

int dealwithargs(int argc, char *argv[]);

struct Results {
  double total_patients;
  double total_time;
  double total_hosps; };

struct Patient {
  int hosps_visited;
  int time;
  int time_left;
  struct Village *home_village; };

struct List {
  struct List *forward;




  struct Patient *patient;
  struct List *back;
 };

struct Hosp {
  int personnel;
  int free_personnel;
  int num_waiting_patients;
  struct List waiting;
  struct List assess;
  struct List inside;
  struct List up; };

struct Village {
  struct Village *forward[4],
                         *back;
  struct List returned;
  struct Hosp hosp;
  int label;
  long seed; };

int dealwithargs(int argc, char *argv[]);
double my_rand(long idum);
struct Patient *generate_patient(struct Village *village);
void put_in_hosp(struct Hosp *hosp, struct Patient *patient);
void addList(struct List *list, struct Patient *patient);
void removeList(struct List *list, struct Patient *patient);
struct List *sim(struct Village *village);
void check_patients_inside(struct Village *village, struct List *list);
struct List *check_patients_assess(struct Village *village, struct List *list);
void check_patients_waiting(struct Village *village, struct List *list);



struct Results get_results(struct Village *village);
# 12 "health.c" 2
# 35 "health.c"
int dealwithargs(int argc, char *argv[]) {

  if (argc < 4) {
    printf("usage:  health <# levels> <time> <seed>\n");
  max_level = 2;
  max_time = 16;
  seed = 1;

}





  printf("max_level=%d  max_time=%d  seed=%d \n", max_level, max_time, seed);
}
# 77 "health.c"
void addList(struct List *list, struct Patient *patient) {
  struct List *b;


  while (list != 0) {
    b = list;
    list = list->forward; }

  list = (struct List *)malloc(sizeof(struct List));

  ;;
  list->patient = patient;
  list->forward = 0;
  list->back = b;
  ;;
  b->forward = list; }


void removeList(struct List *list, struct Patient *patient) {
  struct List *l1,*l2;
  struct Patient *p;


  p = list->patient;
  while(p != patient) {
      list = list->forward;
      p = list->patient; }

  l1 = list->back;
  l2 = list->forward;
  l1->forward = l2;
  if (list->forward != 0) {
    l1 = list->forward;
    l2 = list->back;
    l1->back = l2; }


}







double my_rand(long idum)
{
  long k;
  double answer;

  idum ^= 123459876;
  k = idum / 127773;
  idum = 16807 * (idum - k * 127773) - 2836 * k;
  idum ^= 123459876;
  if (idum < 0)
    idum += 2147483647;
  answer = (1.0 / 2147483647) * idum;

  return answer;
}
# 164 "health.c"
typedef unsigned long int word_t;
typedef struct fc_pointer {
  unsigned long int *value; } future_cell_pointer;
typedef struct fc_results {
  struct Results value; } future_cell_results;



struct Village *alloc_tree(int level, int lo, int proc,
                           int label, struct Village *back)
{
  if (level == 0)
    return 0;
  else {
    int i;
    struct Village *new, *farleft;
    future_cell_pointer fval[4];


    new = (struct Village *)malloc(sizeof(struct Village));






    for (i = 3; i > 0; i--)
      fval[i].value =
 (unsigned long int *)alloc_tree(level - 1, lo + (proc*(i))/4,
     proc / 4, (label * 4) + i + 1, new);


    fval[0].value = (unsigned long int *)alloc_tree(level - 1, lo, proc / 4,
          (label * 4) + 1, new);
    new->back = back;
    ;;
    new->label = label;
    new->seed = label * (127773 + seed);
    new->hosp.personnel = pow(2, level - 1);
    new->hosp.free_personnel = new->hosp.personnel;
    new->hosp.num_waiting_patients = 0;
    new->hosp.assess.forward = 0;
    new->hosp.assess.back = 0;
    new->hosp.waiting.forward = 0;
    new->hosp.waiting.back = 0;
    new->hosp.inside.forward = 0;
    new->hosp.inside.back = 0;
    new->returned.back = 0;
    new->returned.forward = 0;






    for (i = 0; i < 4; i++)
      new->forward[i]= (struct Village *)fval[i].value;
    ;;
    return new;
  }
}


struct Results get_results(struct Village *village)
{
  int i;
  double temp1, temp2;
  struct List *list;
  struct Patient *p;
  struct Village *v;
  future_cell_results fval[4];
  struct Results r1, r2;



  r1.total_hosps = 0.0;
  r1.total_patients = 0.0;
  r1.total_time = 0.0;

  if (village == 0) return r1;







  for (i = 3; i > 0; i--) {
    v = village->forward[i];
    fval[i].value = get_results(v); }


  ;;
  v = village->forward[0];
  fval[0].value = get_results(v);






  for (i = 3; i >= 0; i--) {
    r1.total_hosps += fval[i].value.total_hosps;
    r1.total_patients += fval[i].value.total_patients;
    r1.total_time += fval[i].value.total_time;
  }

  list = village->returned.forward;
  ;;
  while (list != 0) {
    p = list->patient;
    r1.total_hosps += (double)(p->hosps_visited);
    r1.total_time += (double)(p->time);
    r1.total_patients += 1.0;
    list = list->forward; }

  return r1;
}


void check_patients_inside(struct Village *village, struct List *list)
{
  struct List *l;
  struct Patient *p;
  struct Hosp *h;
  int t;


  while (list != 0) {
 p = list->patient;
  t = p->time_left;
    p->time_left = t - 1;
    if (p->time_left == 0) {
      t = village->hosp.free_personnel;
      village->hosp.free_personnel = t+1;
      l = &(village->hosp.inside);
      removeList(l, p);
      l = &(village->returned);
      addList(l, p); }
    list = list->forward;
  }
}


struct List *check_patients_assess(struct Village *village, struct List *list)
{
  double rand;
  struct Patient *p;
  struct Hosp *h;
  struct List *l, *up = 0;
  long s;
  int label, t;
  struct Village *v;
  long newseed;


  while (list != 0)
    {
      p = list->patient;
      t = p->time_left;
      p->time_left = t - 1;
      label = village->label;
      if (p->time_left == 0) {
        s = village->seed;
//printf("aaaaa:%d\n",s);
        rand = my_rand(s);
        village->seed = (long)(rand * 2147483647);
        label = village->label;
        if (rand > 0.1 || label == 0) {
          l = &(village->hosp.assess);
          removeList(l, p);
          l = &(village->hosp.inside);
          addList(l, p);
          p->time_left = 10;
          ;;
          t = p->time;
          p->time = t + 10;
          ;; }
        else {
          t = village->hosp.free_personnel;
          ;;
          village->hosp.free_personnel = t+1;
          l = &(village->hosp.assess);
        up = &(village->hosp.up);
          ;;
          removeList(l, p);
          addList(up, p); } }

      list = list->forward;
    }
  return up;
}


void check_patients_waiting(struct Village *village, struct List *list)
{
  int i, t;
  struct List *l;
  struct Patient *p;


  while (list != 0) {
    i = village->hosp.free_personnel;
    p = list->patient;
    if (i > 0) {
      t = village->hosp.free_personnel;
      village->hosp.free_personnel = t-1;
      p->time_left = 3;
      ;;
      t = p->time;
      p->time = t + 3;
      ;;
      l = &(village->hosp.waiting);
      removeList(l, p);
      l = &(village->hosp.assess);
      addList(l, p); }
    else {
      t = p->time;
      p->time = t + 1; }
    list = list->forward; }
}


void put_in_hosp(struct Hosp *hosp, struct Patient *patient)
{
  struct List *l;
  int t;


  t = patient->hosps_visited;
  patient->hosps_visited = t + 1;
  if (hosp->free_personnel > 0) {
    t = hosp->free_personnel;
    hosp->free_personnel = t-1;
    l = &(hosp->assess);
    addList(l, patient);
    patient->time_left = 3;
    t = patient->time;
    patient->time = t + 3; }
  else {
    l = &(hosp->waiting);
    addList(l, patient); }
}


struct Patient *generate_patient(struct Village *village)
{
  long s,newseed;
  struct Patient *patient;
  double rand;
  int label;


  s = village->seed;
  rand = my_rand(s);
  village->seed = (long)(rand * 2147483647);

  label = village->label;
  if (rand > 0.666) {
    patient = (struct Patient *)malloc(sizeof(struct Patient));
    ;;
    patient->hosps_visited = 0;
    patient->time = 0;
    patient->time_left = 0;
    patient->home_village = village;
    ;;
    return patient;
  }
  return 0;
}

int time = 0;
main(int argc, char *argv[])
{
  struct Results results;
  struct Village *top;
  long i;
  double total_time,
                         total_patients,
                         total_hosps;

  dealwithargs(argc, argv);
  ;;
  ;;
  top = alloc_tree(max_level, 0, 0, 0, top);

  printf("\n\n    Columbian Health Care Simulator\n\n");
  printf("Working...\n");

  for (i = 0; i < max_time; i++) {
    time = i;
    if ((i % 50) == 0) printf("%d\n", i);
    sim(top); }

  results = get_results(top);
  total_patients = results.total_patients;
  total_time = results.total_time;
  total_hosps = results.total_hosps;
  ;;

  printf("Done.\n\n");
  printf("# of people treated:              %f people\n",
    total_patients);
  printf("Average length of stay:           %f time units\n",
    total_time / total_patients);
  printf("Average # of hospitals visited:   %f hospitals\n\n",
    total_hosps / total_patients);




  ;;
}


struct List *sim(struct Village *village)
{
  int i;
  struct Patient *patient, *p;
  struct List *l, *up;
  struct Village *v;
  struct Hosp *h;
  future_cell_pointer val[4];

  int label;


  if (village == 0) return 0;

  label = village->label;






  for (i = 3; i > 0; i--) {
    v = village->forward[i];
    val[i].value = (unsigned long int *)sim(v); }


  v = village->forward[0];
  val[0].value = (word_t *)sim(v);
  h = &(village->hosp);






  for (i = 3; i >= 0; i--) {
    l = (struct List *)val[i].value;
    if (l != 0) {
      l = l->forward;
      while (l != 0) {
 p = l->patient;
 put_in_hosp(h, p);
 l = l->forward;
 removeList((struct List *)val[i].value, p);
      }
    }
  }

  l = village->hosp.inside.forward;
  ;;
  check_patients_inside(village, l);
  l = village->hosp.assess.forward;
  up = check_patients_assess(village, l);
  l = village->hosp.waiting.forward;
  check_patients_waiting(village, l);


  if ((patient = generate_patient(village)) != 0) {
    label = village->label;
    h = &(village->hosp);
    put_in_hosp(h, patient); }

  ;;
  return up;
}







