#ifndef SUPER_BLOCK_PATH_H
#define SUPER_BLOCK_PATH_H

#include <suif1.h>
#include <vector>
#include "super_block.h"

class super_block_path
{
private:
    super_block_list *path;

public:
    super_block_path();
    virtual ~super_block_path();

    super_block_list* super_blocks()const {return path;}
    super_block* first_super_block();
    super_block* last_super_block();
    super_block* convert_to_super_block();
    void add_super_block(super_block *sb);
    void add_super_blocks(super_block_list *sb_list);
    void add_super_block_vector(std::vector<super_block*>* super_block_list);
    std::vector<super_block*>* getSuperblockVectorList()const;
    bool contains(super_block *sb);
    unsigned int size();
    void print(FILE *fp = stdout);
};

#endif
