/*
 * user_options.h
 *
 *  Created on: 2014年12月25日
 *      Author: keyming
 */

#ifndef USER_OPTIONS_H_
#define USER_OPTIONS_H_
#include <iostream>
#include <stdio.h>
#include <fstream>

class UserOptions{
private:
	char* programName;
	int debugLevel;		/* debug level which used to set the diagnosed output message level.*/
	boolean verbose; /*verbose mode */
	boolean statistics; /*statistics information */
	boolean generateDotGraph; /*generate dot file of cfg */
	boolean useXml; /*statistics information stored in xml file */
	char* inputFileName;					// The input file need to be partition.
	char* outputFileName;					// The output file of the partition, namely the .par file.
	FILE* dotFilePtr;								// used to out put the dot (jpeg file) of each procedure.
	FILE* statisticFilePtr;						// ? include what?
	FILE* nodeNumTestFilePtr;			// used for just test.
	FILE* loopTestFilePtr;						// used for just test.
	static UserOptions* instance;
protected:
	void parseOptions(int argc, char** argv);
	void setInputOutputFile(int argc, char** argv);
	void setGenerateDotGraph();
	void setStatisticsFile();
public:
	UserOptions(int argc, char** argv);
	static UserOptions* getUserOptions();
	void printUsage();
public:			// The getter and setters.
	int getDebugLevel() const;
	void setDebugLevel(int debugLevel);
	boolean getGenerateDotGraph() const;
	char* getProgramName() const;
	void setProgramName(char* programName);
	boolean getStatistics() const;
	boolean getUseXml() const;
	void setUseXml();
	boolean getVerbose() const;
	void setVerbose(boolean verbose);
	FILE* getDotFilePtr() const;
	char* getInputFileName() const;
	FILE*getLoopTestFilePtr() const;
	void setLoopTestFilePtr();
	FILE* getNodeNumTestFilePtr() const;
	void setNodeNumTestFilePtr();
	char* getOutputFileName() const;
	 FILE*getStatisticFilePtr() const;
};


void debug(const int lvl, const char *msg...);


#endif /* USER_OPTIONS_H_ */
