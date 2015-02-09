#include "super_block_path.h"
#include "loop_block.h"

super_block_path::super_block_path():path(NULL), threadBlockNum(-1)
{
    path = new super_block_list();
}

super_block_path::~super_block_path()
{
    delete path;
}

super_block* super_block_path::first_super_block()
{
    super_block_list_iter iter(path);
    if(!iter.is_empty())
    {
        super_block *block = iter.step();
        return block;
    }
    else
        return 0;
}

super_block* super_block_path::last_super_block()
{
    super_block *last = 0;
    super_block_list_iter iter(path);
    while(!iter.is_empty())
    {
        last = iter.step();
    }
    return last;
}

/*
 *super_block_path::convert_to_super_block() --- convert super blocks to super block which contains super block list.
 */
super_block* super_block_path::convert_to_super_block()
{
    super_block *nodes = new super_block(super_block::BLOCK_LIST);
    super_block_list_iter iter(path);
    while(!iter.is_empty())
    {
        super_block *sb = iter.step();
        if(sb->knd() == super_block::BLOCK)
            nodes->add_block(sb->first_block());
        else if(sb->knd() == super_block::LOOP)
        {
            loop_block *loop = (loop_block *)sb;
            nodes->add_blocks(loop->most_likely_path()->nodes());
        }
    }
    return nodes;
}

void super_block_path::add_super_block(super_block *sb)
{
    if(!this->contains(sb))
        path->append(sb);
}

void super_block_path::add_super_blocks(super_block_list *sb_list)
{
    super_block_list_iter iter(sb_list);
    while(!iter.is_empty())
    {
        super_block *sblock = iter.step();
        path->append(sblock);
    }
}

bool super_block_path::contains(super_block *sb)
{
    super_block_list_iter iter(path);
    while(!iter.is_empty())
    {
        super_block *block = iter.step();
        if(block == sb)
            return true;
    }
    return false;
}

void super_block_path::add_super_block_vector(std::vector<super_block*>* super_block_list){
	for(std::vector<super_block*>::iterator it = super_block_list->begin(); it !=super_block_list->end(); it++){
		path->append(*it);
	}
	return ;
}

std::vector<super_block*>* super_block_path::getSuperblockVectorList()const{
	std::vector<super_block*>* sblockList = new std::vector<super_block*>();
	 super_block_list_iter iter(path);
	 while(!iter.is_empty()){
		 super_block *block = iter.step();
		 sblockList->push_back(block);
	 }
	 return sblockList;
}

unsigned int super_block_path::size()
{
    unsigned int size = 0;
    super_block_list_iter iter(path);
    while(!iter.is_empty())
    {
        super_block *sblock = iter.step();
        size += sblock->size();
    }
    return size;
}

void super_block_path::print(FILE *fp)
{
    super_block_list_iter iter(path);
    while(!iter.is_empty())
    {
        super_block *sblock = iter.step();
        sblock->print_relationship(fp);
    }
}

void super_block_path::printOnlyBlockNum(FILE *fp)const{
	if(path->is_empty()){
		fprintf(fp, "The super block path is Empty.\n");
		return ;
	}
	fprintf(fp, "Path has %d nodes. And it is in %d threadBlock: \t ", path->count(), threadBlockNum);
	super_block_list_iter iter(path);
	while(!iter.is_empty()){
		super_block *block = iter.step();
		fprintf(fp, " %d \t", block->block_num());
	}
	fprintf(fp, "\n");
	return;
}
