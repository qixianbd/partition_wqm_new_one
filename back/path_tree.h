/*
 * path_tree.h
 *
 *  Created on: 2015年1月7日
 *      Author: keyming
 */

#ifndef PATH_TREE_H_
#define PATH_TREE_H_

struct BlockNode{
	unsigned int blockNo;
	BlockNode* taken;
	BlockNode* fall;
};

class PathTree{
private:

};




#endif /* PATH_TREE_H_ */
