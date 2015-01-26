/*
 * super_block_weight.h
 *
 *  Created on: 2015年1月9日
 *      Author: keyming
 */

#ifndef SUPER_BLOCK_WEIGHT_H_
#define SUPER_BLOCK_WEIGHT_H_

#include <vector>
#include "common.h"

class super_block_weight: public super_block{
private:
	float fall_probability;

	bool fallFullVisit;
	bool takenFullVisit;

	super_block_weight* fall_branch;
	super_block_weight* taken_branch;
	super_block_weight* theCurVisitBranch;

public:
	super_block_weight(super_block_kind block_kind = BLOCK);

	bool onlyOneSubBranch();


	/**
	 * getters and setters.
	 */
public:
	const super_block_weight*& getFallBranch() const {
		return fall_branch;
	}

	void setFallBranch(const super_block_weight*& fallBranch) {
		fall_branch = fallBranch;
	}

	float getFallProbability() const {
		return fall_probability;
	}

	void setFallProbability(float fallProbability) {
		fall_probability = fallProbability;
	}

	bool isFallFullVisit() const {
		return fallFullVisit;
	}

	void setFallFullVisit(bool fallFullVisit) {
		this->fallFullVisit = fallFullVisit;
	}

	const super_block_weight*& getTakenBranch() const {
		return taken_branch;
	}

	void setTakenBranch(const super_block_weight*& takenBranch) {
		taken_branch = takenBranch;
	}

	bool isTakenFullVisit() const {
		return takenFullVisit;
	}

	void setTakenFullVisit(bool takenFullVisit) {
		this->takenFullVisit = takenFullVisit;
	}

	const super_block_weight*& getTheCurVisitBranch() const {
		return theCurVisitBranch;
	}

	void setTheCurVisitBranch(const super_block_weight*& theCurVisitBranch) {
		this->theCurVisitBranch = theCurVisitBranch;
	}

public: 	//static methods
	static std::vector<super_block_path*>* getSubPathBetweenTwoDSblocks(Procedure *proc, super_block* start, super_block* pdom);


};




#endif /* SUPER_BLOCK_WEIGHT_H_ */
