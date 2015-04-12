#include <iostream>
#include <fstream>
#include "threshold.h"

std::string threshold::threshold_file_name = "threshold";
unsigned int threshold::dependence_threshold = 4;
unsigned int threshold::thread_size_lower = 15;
unsigned int threshold::thread_size_upper = 50;
unsigned int threshold::spawning_distance_lower =4;
unsigned int threshold::call_lower_threshold = 4;

float threshold::branch_probability_lower = 0.1;		// addbykeyming at 20150313





void threshold::parse_file()
{
    std::ifstream input(threshold::threshold_file_name.c_str());
    if(!input)
        return;
    
    while(input)
    {
        std::string threshold_name;
        float  value;

        if(!(input >> threshold_name))
            return;
        if(!(input >> value))
            return;

        if(threshold_name == "dependence_threshold")
            threshold::dependence_threshold = (int)value;
        else if(threshold_name == "thread_size_lower")
            threshold::thread_size_lower = (int)value;
        else if(threshold_name == "thread_size_upper")
            threshold::thread_size_upper = (int)value;
        else if(threshold_name == "spawning_distance_lower")
            threshold::spawning_distance_lower = (int)value;
        else if(threshold_name == "call_lower_threshold")
            threshold::call_lower_threshold = (int)value;
        else if (threshold_name == "branch_probability_lower")
        	threshold::branch_probability_lower = value;
    }
}

void threshold::print()
{
    std::cout<<"dependence_threshold : "<<threshold::dependence_threshold << std::endl;
    std::cout<<"thread_size_lower : " << threshold::thread_size_lower <<std::endl;
    std::cout<<"thread_size_upper :" << threshold::thread_size_upper <<std::endl;
    std::cout<<"spawning_distance_lower : "<< threshold::spawning_distance_lower << std::endl;
    std::cout<<"call_lower_threshold : "<<threshold::call_lower_threshold <<std::endl;
    std::cout << "branch_probability_lower : " << threshold::branch_probability_lower << std::endl;
}
