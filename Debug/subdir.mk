################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../XmlDocument.o \
../XmlElement.o \
../da_cfg.o \
../helper.o \
../loop_block.o \
../loop_cut.o \
../main.o \
../min_cut.o \
../min_cut_fun.o \
../misc.o \
../node.o \
../route.o \
../spawn_pos_trace.o \
../spmt_fun.o \
../spmt_instr.o \
../spmt_utility.o \
../start_sty.o \
../super_block.o \
../super_block_cfg.o \
../super_block_path.o \
../thread.o \
../threshold.o 

CPP_SRCS += \
../XmlDocument.cpp \
../XmlElement.cpp \
../da_cfg.cpp \
../debugger.cpp \
../helper.cpp \
../loop_block.cpp \
../loop_cut.cpp \
../main.cpp \
../min_cut.cpp \
../min_cut_fun.cpp \
../misc.cpp \
../node.cpp \
../route.cpp \
../route_test.cpp \
../spawn_pos_trace.cpp \
../spmt_fun.cpp \
../spmt_instr.cpp \
../spmt_utility.cpp \
../super_block.cpp \
../super_block_cfg.cpp \
../super_block_path.cpp \
../thread.cpp \
../threshold.cpp 

CC_SRCS += \
../prog_ver.cc \
../start_sty.cc 

OBJS += \
./XmlDocument.o \
./XmlElement.o \
./da_cfg.o \
./debugger.o \
./helper.o \
./loop_block.o \
./loop_cut.o \
./main.o \
./min_cut.o \
./min_cut_fun.o \
./misc.o \
./node.o \
./prog_ver.o \
./route.o \
./route_test.o \
./spawn_pos_trace.o \
./spmt_fun.o \
./spmt_instr.o \
./spmt_utility.o \
./start_sty.o \
./super_block.o \
./super_block_cfg.o \
./super_block_path.o \
./thread.o \
./threshold.o 

CC_DEPS += \
./prog_ver.d \
./start_sty.d 

CPP_DEPS += \
./XmlDocument.d \
./XmlElement.d \
./da_cfg.d \
./debugger.d \
./helper.d \
./loop_block.d \
./loop_cut.d \
./main.d \
./min_cut.d \
./min_cut_fun.d \
./misc.d \
./node.d \
./route.d \
./route_test.d \
./spawn_pos_trace.d \
./spmt_fun.d \
./spmt_instr.d \
./spmt_utility.d \
./super_block.d \
./super_block_cfg.d \
./super_block_path.d \
./thread.d \
./threshold.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -I/home/keyming/Prophet/x86_64-linux-gnu/include/machine -I/home/keyming/Prophet/x86_64-linux-gnu/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

%.o: ../%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -I/home/keyming/Prophet/x86_64-linux-gnu/include/machine -I/home/keyming/Prophet/x86_64-linux-gnu/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


