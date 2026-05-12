# compile and link the program
CC = g++
CFLAGS = -Wall -g
LFLAGS = -L./I/lib
LLIBS = -lcurl

# target and source to build
TARGET = ./I/compile/main
SRCS = ./I/src/main.cpp
OBJS = $(patsubst ./I/src/%.cpp, ./I/build/%.o, $(SRCS))
# patsubst is used to replace the pattern in the source files with the corresponding object files
# patsubst <pattern>, <replacement>, <text>

all:$(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(LFLAGS) -o $@ $^ $(LLIBS)

# $@ is the target
# $< is the first dependency (source file)

./I/build/%.o : ./I/src/%.cpp
	$(CC) $(CFLAGS) -c $< -o $@
	@echo " object file $@ created from source file $<. "

# ensure one on one mapping between source and object files

clean:
	rm -f $(OBJS) $(TARGET)
	@echo "Cleaned up object files and target executable."

# clear all the generated files and start fresh