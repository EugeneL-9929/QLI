# compile and link the program
CC = g++
CFLAGS = -std=c++11 -Wall -g
LFLAGS = # -L./lib
LLIBS = # -lmylib

# target and source to build
TARGET = ./compile/main
SRCS = ./src/main.cpp
OBJS = $(patsubst ./I/src/%.cpp, ./I/build/%.o, $(SRCS))
# patsubst is used to replace the pattern in the source files with the corresponding object files
# patsubst <pattern>, <replacement>, <text>

all:$(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $(LFLAGS) -o $@ $^ $(LLIBS)

# $@ is the target
# $< is the first dependency (source file)

./build/%.o : ./src/%.cpp
	$(CC) $(CFLAGS) -c $< -o $@
	@echo " object file $@ created from source file $<. "

# ensure one on one mapping between source and object files

clean:
	rm -f $(OBJS) $(TARGET)
	@echo "Cleaned up object files and target executable."

# clear all the generated files and start fresh