#include <iostream>
#include <fstream>
#include "common.h"
#include "user_options.h"
#include "partition.h"

using namespace std;
/*********************** Global Variables session.                 **/
/**
 *global variables used in annotation.
 */
char *k_cqip_pos; /*control quasi-independent point */
char *k_proc_profile; /*procedure dynamic cycles profile annotation */
char *k_instr_profile; /*control jump instruction profile annotation */
char *k_pslice_exit_pos; /*pre-compute slice exit position annotation */
char *k_pslice_entry_pos; /*pre-compute slice entry position annotation */
char *k_call_overhead; /*调用开销caller procedure  dynamic cycles annotation */
char *k_looppos;   /* the begin of a loop*/
char *k_loopend;     /* the end of a loop (one loop may have several -)*/


/**
 *
 */
UserOptions *userOptions;
std::ofstream outfile;
mproc_symtab *cur_psymtab = NULL; /*current wrapped procedure symbol table */


/*********************** static  function session.                 **/

static void register_predefined_annote(){
	ANNOTE(k_cqip_pos, "cqip_pos", TRUE);
	ANNOTE(k_instr_profile, "instr_profile", TRUE);
	ANNOTE(k_pslice_entry_pos, "pslice_entry_pos", TRUE);
	ANNOTE(k_pslice_exit_pos, "pslice_exit_pos", TRUE);
	ANNOTE(k_proc_profile, "proc_profile", TRUE);
	ANNOTE(k_call_overhead, "call_overhead", TRUE);
	ANNOTE(k_looppos, "looppos", TRUE);
}




static void readAndProcessFiles(){
	file_set_entry *fse;
	fileset->reset_iter();
	while ((fse = fileset->next_file())) {
		char* fileName = fse->name();
		debug(2, "Processing file %s", fileName);

		target_arch = new archinfo(fse);
		printf("\n%s, %s, %s, %s\n", target_arch->family(), target_arch->version(), target_arch->vendor_os(), target_arch->implementation());
		assert(target_arch->family() == k_mips);
		target_regs = new reginfo(target_arch->fopen_mdfile("reg"));

		debug(3, "Processing procedures for %s", fileName);
		processFile(fse);
		delete target_regs;
		delete target_arch;
	}
	delete fileset;
}

int main(int argc, char** argv)
{
	start_suif(argc, argv);
	register_predefined_annote();

	userOptions = new UserOptions(argc, argv);
	readAndProcessFiles();


	std::cerr << "End of the Partition Program. " << std::endl;
	return 0;
}
