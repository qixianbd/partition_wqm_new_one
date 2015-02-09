#ifndef COMMAND_PARAMETERS_H
#define COMMAND_PARAMETERS_H

#include <string>

class threshold
{
public:
    static std::string threshold_file_name;
    static unsigned int dependence_threshold;
    static unsigned int thread_size_lower;
    static unsigned int thread_size_upper;
    static unsigned int spawning_distance_lower;
    static unsigned int call_lower_threshold;

    static void parse_file();
    static void print();
};

#endif
