/*
 * procedure_path.h
 *
 *  Created on: 2015年1月22日
 *      Author: keyming
 */

#ifndef PROCEDURE_PATH_H_
#define PROCEDURE_PATH_H_

#include <vector>
#include <ostream>
#include <iostream>
class super_block;
class super_block_path;
/*
struct SubPathProperty{
	std::vector<super_block*>* subPath;
	float probability;
	unsigned int pathSize;
};


class DSblock{
	unsigned int nodeNum;
	unsigned int avgBlockSize;
	std::list<SubPathProperty*> *blockPathList;
};


class ProcedureDominatorTree{

};

*/


/*
 * std::vector<ProcedurePath*> suitablePaths
 * we should put these definition into the Procedure class.
 */

/**
 * struct PathNode{
 * super_block* node;
 * unsigned int cqipNum;			// if cqipNum== 0, then it means that this is not the cqip node. else it refers to the nth cqip in the path.
 * };
 */

class ProcedurePath{
private:
	std::vector<super_block*> *path;
	std::vector<super_block*> *cqip_block_list;

	typedef std::vector<super_block*> thread_block;
	std::vector<thread_block*>* thread_list;

protected:
	void fillCqipList();

	void determineThreadSize();
	void divideToThreadBlock();
	void addToThreadList(std::vector<super_block*>* block_list);
public:
	ProcedurePath(super_block_path* sbpath, std::vector<super_block*> *the_cqip_block_list);
	~ProcedurePath();
	void addSuperBlock(super_block* );
	unsigned int  blockNumber();
	unsigned int size();

	unsigned int getCqipNumber()const;
	super_block*  getCqipBlock(int n)const;

	std::vector<thread_block*>* getThreadList()const{
		return thread_list;
	}
	static bool isDominator(super_block* block);

/**
 * debug information. print out the object's content.
 */
public:
	void printCqipList(std::ostream& os)const;
	void printPath(std::ostream& os)const;
	void printThreadBlock(std::ostream& os)const;
};











#endif /* PROCEDURE_PATH_H_ */
