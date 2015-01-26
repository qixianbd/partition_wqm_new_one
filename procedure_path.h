/*
 * procedure_path.h
 *
 *  Created on: 2015年1月22日
 *      Author: keyming
 */

#ifndef PROCEDURE_PATH_H_
#define PROCEDURE_PATH_H_

#include <vector>
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

public:
	ProcedurePath(super_block_path* sbpath);
	void addSuperBlock(super_block* );
	unsigned int  blockNumber();
	unsigned int size();

	unsigned int getCqipNumber();
	super_block*  getCqipBlock(int n);

};











#endif /* PROCEDURE_PATH_H_ */
