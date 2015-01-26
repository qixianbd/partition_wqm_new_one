TARGET =	partition
SUPER_PACKAGES_PATH = machsuif
LIBS =		-lfl -ldfa -lsuif1 -luseful -lmachine -lcfg -lm -lfl
LDFLAGS = -lfl
SRCS =		main.cc \
		user_options.cc \
		partition.cc procedure.cc loop_block.cpp da_cfg.cpp misc.cpp \
		spawn_pos_trace.cpp super_block_cfg.cpp super_block_path.cpp super_block.cpp \
		thread.cpp threshold.cpp spmt_utility.cpp spmt_instr.cpp \
		thread_partition.cc procedure_path.cc

OBJS =		main.o			\
		user_options.o \
		partition.o 	procedure.o loop_block.o  da_cfg.o  misc.o  \
		spawn_pos_trace.o super_block_cfg.o super_block_path.o super_block.o \
		thread.o threshold.o spmt_utility.o spmt_instr.o \
		thread_partition.o procedure_path.o

include	$(SUIFHOME)/src/machsuif/Makefile.defs

all: 		prog

install-bin: 	install-prog

include $(SUIFHOME)/Makefile.std
include $(SUIFHOME)/src/machsuif/Makefile.std
