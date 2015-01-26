#include <suif1.h>
#include <useful.h>
#include <machine.h>
#include <cfg.h>
#include <dfa.h>
#include <suif1/initsuif.h>
#include <suif1/misc.h>
//#include <mipsOps.h>


extern void debug(const int lvl, const char *msg ...);

extern char *k_cqip_pos;
extern char *k_proc_profile;
extern char *k_instr_profile;
extern char *k_pslice_entry_pos;
extern char *k_pslice_exit_pos;
extern char *k_call_overhead;
extern char *k_looppos;   /* the begin of a loop*/

