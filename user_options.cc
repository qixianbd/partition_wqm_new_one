/*
 * user_options.cc
 *
 *  Created on: 2014年12月25日
 *      Author: keyming
 */
#include <fstream>
#include <iostream>
#include "common.h"
#include "user_options.h"
#include "threshold.h"


extern UserOptions *userOptions;
extern std::ofstream outfile;

UserOptions* UserOptions::instance = NULL;
void UserOptions::printUsage(){
	fprintf(stderr, "\nUsage is:\n");
	fprintf(stderr, "  %s [options...] infile [outfile]\n", this->getProgramName());
	fprintf(stderr, "\nOptions are: \n");
	fprintf(stderr, "\t-G\tprint dot file of cfg\n");
	fprintf(stderr, "\t-V\tverbose mode\n");
	fprintf(stderr, "\t-S\tstatistics information\n\n");
	fprintf(stderr,
			"\t-X\tstatistics information stored in *.xml file\n\n");
	fprintf(stderr, "\nVERSION: %s\n", prog_ver_string);
}

/**
 *debug() -- print out a diagnostic message.
 */
void debug(const int lvl, const char *msg...)
{
	if (lvl > userOptions->getDebugLevel())
		return;
	va_list ap;
	va_start(ap, msg);
	fprintf(stderr, "%s: DEBUG (%d):", userOptions->getProgramName(), lvl);
	vfprintf(stderr, msg, ap);
	va_end(ap);
	putc('\n', stderr);
	fflush(stderr);
}

/*
 *New_filename() --- generates an output file name from an input filename and an extension.
 *                  return ofile pointer.
 */
static char *addExtentionToFilename(char *ifile, char *ext) {
	int i;
	char *ofile = new char[strlen(ifile) + strlen(ext) + 1];

	i = strlen(ifile) - 1;
	while ((i > 0) && (ifile[i] != '.'))
		i--;
	strncpy(ofile, ifile, i);
	ofile[i] = '\0';
	strcat(ofile, ext);
	return ofile;
}

void UserOptions::setInputOutputFile(int argc, char** argv){
	assert_msg(argc, ("You required a single input file."));
	assert_msg((argc==2), ("You required a single Output file."));

	inputFileName = argv[0];
	outputFileName = argv[1];
	fileset->add_file(inputFileName, outputFileName);
	return ;
}

void UserOptions::parseOptions(int argc, char** argv) {
	programName = *argv;
	argv++;
	argc--;

	if (!argc) {
		printUsage();
		exit(1);
	}
	while (argc) {
		if (**argv == '-') {
			char *arg = argv[0];
			//debug information
			if (strncmp(arg, "-debug", 6) == 0) {
				if (arg[6])
					debugLevel = atol(&arg[6]);
				else if (argc < 1 || argv[1][0] == '-')
					assert_msg(FALSE,
							("-debug option requires a debugging level"));
				else {
					debugLevel = atol(*++argv);
					argc--;
				}
				fprintf(stderr, "Debug level is %d", debugLevel);
			}
			else if (strcmp(arg, "-G") == 0)				//print dot file of the cfg
				generateDotGraph = TRUE;
			else if (strcmp(arg, "-V") == 0)							//verbose mode
				verbose = TRUE;
			else if (strcmp(arg, "-S") == 0)							//statistics information
				statistics = TRUE;
			else if (strcmp(arg, "-X") == 0)								//statistics information for *.xml file
				useXml = TRUE;
			else
			assert_msg(FALSE, ("%s is an undefined option", arg));
		} else
			break;
		argv++;
		argc--;
	}
	setInputOutputFile(argc, argv);
	setGenerateDotGraph();
	setStatisticsFile();
	setUseXml();		//!!!NotCompleted, need to be completed.
	setNodeNumTestFilePtr();
	threshold::print();
	return ;
}

UserOptions* UserOptions::getUserOptions(){
	assert(instance);
	return instance;
}


UserOptions::UserOptions(int argc, char** argv):programName(NULL), debugLevel(0), verbose(false),
			statistics(false), generateDotGraph(false), useXml(false), inputFileName(NULL), outputFileName(NULL),
			dotFilePtr(NULL), statisticFilePtr(NULL), nodeNumTestFilePtr(NULL), loopTestFilePtr(NULL)
			{
	parseOptions(argc, argv);
	instance = this;
}

int UserOptions::getDebugLevel() const {
	return debugLevel;
}

void UserOptions::setDebugLevel(int debugLevel) {
	this->debugLevel = debugLevel;
}

boolean UserOptions::getGenerateDotGraph() const {
	return generateDotGraph;
}

void UserOptions::setGenerateDotGraph() {
	if(generateDotGraph){
		char* dotFileName = addExtentionToFilename(inputFileName, ".dot");
		if ((dotFilePtr = fopen(dotFileName, "w")) == NULL) {
			fprintf(stderr, "Cannot open file : %s\n", dotFileName);
			exit(1);
		}
		fprintf(dotFilePtr, "digraph G{\n");
	}
	return ;
}

char* UserOptions::getProgramName() const {
	return programName;
}

void UserOptions::setProgramName(char* programName) {
	this->programName = programName;
}

boolean UserOptions::getStatistics() const {
	return statistics;
}

void UserOptions::setStatisticsFile() {
	if(statistics){
		char* statisticFileName = addExtentionToFilename(programName, ".stat");
		if((statisticFilePtr = fopen(statisticFileName, "w")) == NULL){
			fprintf(stderr, "Can Not Open File:%s\n", statisticFileName);
			exit(1);
		}
		fprintf(statisticFilePtr, "####Statistics Information Of Thread Size And Pslice####\n");
	}
	return ;
}

boolean UserOptions::getUseXml() const {
	return useXml;
}

void UserOptions::setUseXml() {
	if (useXml) {
		char *xml_name = addExtentionToFilename(programName, ".xml");
		//!!!Need to be complished.
	}
}

boolean UserOptions::getVerbose() const {
	return verbose;
}

void UserOptions::setVerbose(boolean verbose) {
	this->verbose = verbose;
}

FILE* UserOptions::getDotFilePtr() const {
	return dotFilePtr;
}


char* UserOptions::getInputFileName() const {
	return inputFileName;
}

 FILE* UserOptions::getLoopTestFilePtr() const {
	return loopTestFilePtr;
}

void UserOptions::setLoopTestFilePtr() {
	const char *loop_file_name = addExtentionToFilename(programName, "_loop__test.txt");
	if ((this->loopTestFilePtr = fopen(loop_file_name, "w")) == NULL) {
		printf("Cannot open test file .\n");
		exit(1);
	}
	return ;
}

FILE* UserOptions::getNodeNumTestFilePtr() const {
	return nodeNumTestFilePtr;
}

void UserOptions::setNodeNumTestFilePtr() {
	const char *test_file_name = addExtentionToFilename(programName, "_node_num_test.txt");
	if ((nodeNumTestFilePtr = fopen(test_file_name, "w")) == NULL) {
		printf("Cannot open test file .\n");
		exit(1);
	}
	return ;
}

char* UserOptions::getOutputFileName() const {
	return outputFileName;
}

FILE* UserOptions::getStatisticFilePtr() const {
	return statisticFilePtr;
}
