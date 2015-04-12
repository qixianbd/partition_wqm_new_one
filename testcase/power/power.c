#include "../include/stdio.h"
#include "../include/stdlib.h"
#include "../include/math.h"


typedef struct demand {
    double P;
    double Q;
} Demand;
extern void *malloc();
typedef struct root {
    Demand D;
    double theta_R;
    double theta_I;
    Demand last;
    double last_theta_R;
    double last_theta_I;
    struct lateral *feeders[2];
} *Root;

typedef struct lateral {
    Demand D;
    double alpha;
    double beta;
    double R;
    double X;
    struct lateral *next_lateral;
    struct branch *branch;
} *Lateral;

typedef struct branch {
    Demand D;
    double alpha;
    double beta;
    double R;
    double X;
    struct branch *next_branch;
    struct leaf *leaves[2];
} *Branch;

typedef struct leaf {
    Demand D;
    double pi_R;
    double pi_I;
} *Leaf;
Root build_tree();
Lateral build_lateral(int i, int num);
Branch build_branch(int i, int j, int num);
Leaf build_leaf();

void Compute_Tree(Root r);
Demand Compute_Lateral(Lateral l, double theta_R, double theta_I,
		       double pi_R, double pi_I);
Demand Compute_Branch(Branch b, double theta_R, double theta_I,
		      double pi_R, double pi_I);
Demand Compute_Leaf(Leaf l, double pi_R, double pi_I);
Root build_tree()
{
    register int i;
    register Root t;




    register Lateral l;


    t = (Root) malloc(sizeof(*t));
# 41 "power2.c"
    for (i = 0; i < 2; i++) {

	l = build_lateral(i * 4, 4);
	t->feeders[i] = l;
    }

    t->theta_R = 0.8;
    t->theta_I = 0.16;
    return t;
}

Lateral build_lateral(int i, int num)
{
    register int j, k;
    register Lateral l;
    register Branch b;



    register Lateral next;


    if (num == 0)
	return 0;
# 75 "power2.c"
    l = (Lateral) malloc(sizeof(*l));







    next = build_lateral(i, num - 1);
    b = build_branch(i * 1, (num - 1) * 1, 1);






    l->next_lateral = next;

    l->branch = b;
    l->R = 1 / 300000.0;
    l->X = 0.000001;
    l->alpha = 0.0;
    l->beta = 0.0;
    return l;
}

Branch build_branch(int i, int j, int num)
{
    register Leaf l;
    register Branch b;
    if (num == 0)
	return 0;
    b = (Branch) malloc(sizeof(*b));
    b->next_branch = build_branch(i, j, num - 1);
    for (i = 0; i < 2; i++) {
	l = build_leaf();
	b->leaves[i] = l;
    }
    b->R = 0.0001;
    b->X = 0.00002;
    b->alpha = 0.0;
    b->beta = 0.0;
    return b;
}

Leaf build_leaf()
{
    register Leaf l;

    l = (Leaf) malloc(sizeof(*l));
    l->D.P = 1.0;
    l->D.Q = 1.0;
    return l;
}

# 178 "power2.c"
static double P = 1.0;
static double Q = 1.0;





void optimize_node(double pi_R, double pi_I);
double find_g();
double find_h();
double find_gradient_f(double pi_R, double pi_I, double *gradient);
double find_gradient_g(double *gradient);
double find_gradient_h(double *gradient);
void find_dd_grad_f(double pi_R, double pi_I, double *dd_grad);
double make_orthogonal(double *v_mod, double *v_static);


void Compute_Tree(Root r)
{
    register int i;
    Lateral l;

    Demand a;



    Demand tmp;
    double theta_R, theta_I;

    tmp.P = 0.0;
    tmp.Q = 0.0;

    for (i = 0; i < 2; i++) {
	l = r->feeders[i];
	theta_R = r->theta_R;
	theta_I = r->theta_I;
	a = Compute_Lateral(l, theta_R, theta_I, theta_R, theta_I);
	tmp.P += a.P;
	tmp.Q += a.Q;

    }
# 231 "power2.c"
    r->D.P = tmp.P;
    r->D.Q = tmp.Q;
}

Demand Compute_Lateral(Lateral l, double theta_R, double theta_I,
		       double pi_R, double pi_I)
{

    Demand a1;



    Demand a2;
    double new_pi_R, new_pi_I;
    double a, b, c, root;
    Lateral next;
    Branch br;

    new_pi_R = pi_R + l->alpha * (theta_R + (theta_I * l->X) / l->R);
    new_pi_I = pi_I + l->beta * (theta_I + (theta_R * l->R) / l->X);

    next = l->next_lateral;
    if (next != 0)

	a1 = Compute_Lateral(next, theta_R, theta_I, new_pi_R, new_pi_I);




    br = l->branch;
    a2 = Compute_Branch(br, theta_R, theta_I, new_pi_R, new_pi_I);

    if (next != 0) {

	l->D.P = a1.P + a2.P;
	l->D.Q = a1.Q + a2.Q;





    } else {
	l->D.P = a2.P;
	l->D.Q = a2.Q;
    }


    a = l->R * l->R + l->X * l->X;
    b = 2 * l->R * l->X * l->D.Q - 2 * l->X * l->X * l->D.P - l->R;
    c = l->R * l->D.Q - l->X * l->D.P;
    c = c * c + l->R * l->D.P;
    root = (-b - sqrt(b * b - 4 * a * c)) / (2 * a);
    l->D.Q = l->D.Q + ((root - l->D.P) * l->X) / l->R;
    l->D.P = root;


    a = 2 * l->R * l->D.P;
    b = 2 * l->X * l->D.Q;
    l->alpha = a / (1 - a - b);
    l->beta = b / (1 - a - b);
    return l->D;
}

Demand Compute_Branch(Branch br, double theta_R, double theta_I,
		      double pi_R, double pi_I)
{
    Demand a2, tmp;
    double new_pi_R, new_pi_I;
    double a, b, c, root;
    Leaf l;
    Branch next;
    int i;



    Demand a1;


    new_pi_R = pi_R + br->alpha * (theta_R + (theta_I * br->X) / br->R);
    new_pi_I = pi_I + br->beta * (theta_I + (theta_R * br->R) / br->X);

    next = br->next_branch;
    if (next != 0) {

	a1 = Compute_Branch(next, theta_R, theta_I, new_pi_R, new_pi_I);



    }


    tmp.P = 0.0;
    tmp.Q = 0.0;

    for (i = 0; i < 2; i++) {
	l = br->leaves[i];
	a2 = Compute_Leaf(l, new_pi_R, new_pi_I);
	tmp.P += a2.P;
	tmp.Q += a2.Q;
    }
    if (next != 0) {

	br->D.P = a1.P + tmp.P;
	br->D.Q = a1.Q + tmp.Q;





    } else {
	br->D.P = tmp.P;
	br->D.Q = tmp.Q;
    }


    a = br->R * br->R + br->X * br->X;
    b = 2 * br->R * br->X * br->D.Q - 2 * br->X * br->X * br->D.P - br->R;
    c = br->R * br->D.Q - br->X * br->D.P;
    c = c * c + br->R * br->D.P;
    root = (-b - sqrt(b * b - 4 * a * c)) / (2 * a);
    br->D.Q = br->D.Q + ((root - br->D.P) * br->X) / br->R;
    br->D.P = root;

    a = 2 * br->R * br->D.P;
    b = 2 * br->X * br->D.Q;
    br->alpha = a / (1 - a - b);
    br->beta = b / (1 - a - b);

    return br->D;
}

Demand Compute_Leaf(Leaf l, double pi_R, double pi_I)
{
    P = l->D.P;
    Q = l->D.Q;
    optimize_node(pi_R, pi_I);
    if (P < 0.0) {
	P = 0.0;
	Q = 0.0;
    }
    l->D.P = P;
    l->D.Q = Q;
    return l->D;
}



void optimize_node(double pi_R, double pi_I)
{
    double g;
    double h;

    double grad_f[2];
    double grad_g[2];
    double grad_h[2];
    double dd_grad_f[2];
    double magnitude;

    int i;
    double total;
    double max_dist;

    do {
	h = find_h();
	if (((h) > 0 ? (h) : (-(h))) > 0.001) {
	    magnitude = find_gradient_h(grad_h);
	    total = h / magnitude;
	    P -= total * grad_h[0];
	    Q -= total * grad_h[1];
	}


	g = find_g();
	if (g > 0.001) {
	    magnitude = find_gradient_g(grad_g);
	    find_gradient_h(grad_h);
	    magnitude *= make_orthogonal(grad_g, grad_h);
	    total = g / magnitude;
	    P -= total * grad_g[0];
	    Q -= total * grad_g[1];
	}


	magnitude = find_gradient_f(pi_R, pi_I, grad_f);
	find_dd_grad_f(pi_R, pi_I, dd_grad_f);
	total = 0.0;
	for (i = 0; i < 2; i++)
	    total += grad_f[i] * dd_grad_f[i];
	magnitude /= ((total) > 0 ? (total) : (-(total)));
	find_gradient_h(grad_h);
	magnitude *= make_orthogonal(grad_f, grad_h);
	find_gradient_g(grad_g);
	total = 0.0;
	for (i = 0; i < 2; i++)
	    total += grad_f[i] * grad_g[i];
	if (total > 0) {
	    max_dist = -find_g() / total;
	    if (magnitude > max_dist)
		magnitude = max_dist;
	}
	P += magnitude * grad_f[0];
	Q += magnitude * grad_f[1];

	h = find_h();
	g = find_g();
	find_gradient_f(pi_R, pi_I, grad_f);
	find_gradient_h(grad_h);

    } while (((h) > 0 ? (h) : (-(h))) > 0.001 || g > 0.001 ||
	     (((g) > 0 ? (g) : (-(g))) > 0.001 &&
	      ((grad_f[0] * grad_h[1] - grad_f[1] * grad_h[0]) >
	       0 ? (grad_f[0] * grad_h[1] -
		    grad_f[1] * grad_h[0]) : (-(grad_f[0] * grad_h[1] -
						grad_f[1] * grad_h[0]))) >
	      0.001));
}

double find_g()
{
    return (P * P + Q * Q - 0.8);
}

double find_h()
{
    return (P - 5 * Q);
}

double find_gradient_f(double pi_R, double pi_I, double *gradient)
{
    int i;
    double magnitude = 0.0;

    gradient[0] = 1 / (1 + P) - pi_R;
    gradient[1] = 1 / (1 + Q) - pi_I;
    for (i = 0; i < 2; i++)
	magnitude += gradient[i] * gradient[i];
    magnitude = sqrt(magnitude);
    for (i = 0; i < 2; i++){
	gradient[i] /= magnitude;
    }
    return magnitude;
}

double find_gradient_g(double *gradient)
{
    int i;
    double magnitude = 0.0;

    gradient[0] = 2 * P;
    gradient[1] = 2 * Q;
    for (i = 0; i < 2; i++)
	magnitude += gradient[i] * gradient[i];
    magnitude = sqrt(magnitude);
    for (i = 0; i < 2; i++)
	gradient[i] /= magnitude;

    return magnitude;
}

double find_gradient_h(double *gradient)
{
    int i;
    double magnitude = 0.0;

    gradient[0] = 1.0;
    gradient[1] = -5.0;
    for (i = 0; i < 2; i++)
	magnitude += gradient[i] * gradient[i];
    magnitude = sqrt(magnitude);
    for (i = 0; i < 2; i++)
	gradient[i] /= magnitude;

    return magnitude;
}

void find_dd_grad_f(double pi_R, double pi_I, double *dd_grad)
{
    double P_plus_1_inv = 1 / (P + 1);
    double Q_plus_1_inv = 1 / (Q + 1);
    double P_grad_term = P_plus_1_inv - pi_R;
    double Q_grad_term = Q_plus_1_inv - pi_I;
    double grad_mag;

    grad_mag = sqrt(P_grad_term * P_grad_term + Q_grad_term * Q_grad_term);

    dd_grad[0] = -P_plus_1_inv * P_plus_1_inv * P_grad_term / grad_mag;
    dd_grad[1] = -Q_plus_1_inv * Q_plus_1_inv * Q_grad_term / grad_mag;
}

double make_orthogonal(double *v_mod, double *v_static)
{
    int i;
    double total = 0.0;
    double length = 0.0;

    for (i = 0; i < 2; i++)
	total += v_mod[i] * v_static[i];
    for (i = 0; i < 2; i++) {
	v_mod[i] -= total * v_static[i];
	length += v_mod[i] * v_mod[i];
    }
    length = sqrt(length);
    for (i = 0; i < 2; i++)
	v_mod[i] /= length;

    if (1 - total * total < 0)
	return 0;

    return sqrt(1 - total * total);
}

# 558 "power2.c"
double map_P[36] = { 8752.218091048, 8446.106670416, 8107.990680283,
    7776.191574285, 7455.920518777, 7146.602181352,
    6847.709026813, 6558.734204024, 6279.213382291,
    6008.702199986, 5746.786181029, 5493.078256495,
    5247.206333097, 5008.828069358, 4777.615815166,
    4553.258735900, 4335.470002316, 4123.971545694,
    3918.501939675, 3718.817618538, 3524.683625800,
    3335.876573044, 3152.188635673, 2973.421417103,
    2799.382330486, 2629.892542617, 2464.782829705,
    2303.889031418, 2147.054385395, 1994.132771399,
    1844.985347313, 1699.475053321, 1557.474019598,
    1418.860479043, 1283.520126656, 1151.338004216
};






double map_Q[36] = { 1768.846590190, 1706.229490046, 1637.253873079,
    1569.637451623, 1504.419525242, 1441.477913810,
    1380.700660446, 1321.980440476, 1265.218982201,
    1210.322424636, 1157.203306183, 1105.780028163,
    1055.974296746, 1007.714103979, 960.930643875,
    915.558722782, 871.538200178, 828.810882006,
    787.322098340, 747.020941334, 707.858376214,
    669.787829741, 632.765987756, 596.751545633,
    561.704466609, 527.587580585, 494.365739051,
    462.004890691, 430.472546686, 399.738429196,
    369.773787595, 340.550287137, 312.041496095,
    284.222260660, 257.068973074, 230.557938283
};





main(int argc, char *argv[])
{
    Root r;
    int i, finished = 0;
    double d_theta_R, d_theta_I;
# 611 "power2.c"
    printf("Past initialization\n");







    r = build_tree();
    printf("Built tree\n");
    Compute_Tree(r);
    r->last.P = r->D.P;
    r->last.Q = r->D.Q;
    r->last_theta_R = r->theta_R;
    r->last_theta_I = r->theta_I;
    r->theta_R = 0.7;
    r->theta_I = 0.14;

    while (!finished) {
	Compute_Tree(r);
	printf("TR=%f, TI=%f,", r->theta_R, r->theta_I);
	printf("P0=%f, Q0=%f\n", r->D.P, r->D.Q);
	if (((r->D.P / 10000.0 - r->theta_R) >
	     0 ? (r->D.P / 10000.0 -
		  r->theta_R) : (-(r->D.P / 10000.0 - r->theta_R))) < 0.01
	    && ((r->D.Q / 10000.0 - r->theta_I) >
		0 ? (r->D.Q / 10000.0 -
		     r->theta_I) : (-(r->D.Q / 10000.0 - r->theta_I))) <
	    0.01) {
	    finished = 1;
	} else {
	    i = (int) ((r->theta_R - 0.65) / 0.01);
	    if (i < 0)
		i = 0;
	    if (i > 35)
		i = 35;
	    d_theta_R = -(r->theta_R - r->D.P / 10000.0) /
		(1 - (map_P[i + 1] - map_P[i]) / (0.01 * 10000.0));

	    i = (int) ((r->theta_I - 0.13) / 0.002);
	    if (i < 0)
		i = 0;
	    if (i > 35)
		i = 35;
	    d_theta_I = -(r->theta_I - r->D.Q / 10000.0) /
		(1 - (map_Q[i + 1] - map_Q[i]) / (0.002 * 10000.0));

	    printf("D TR=%f, TI=%f\n", d_theta_R, d_theta_I);
	    r->last.P = r->D.P;
	    r->last.Q = r->D.Q;
	    r->last_theta_R = r->theta_R;
	    r->last_theta_I = r->theta_I;
	    r->theta_R = r->theta_R + d_theta_R;
	    r->theta_I = r->theta_I + d_theta_I;
	}
    }
# 667 "power2.c"
}
