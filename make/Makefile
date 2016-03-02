#
# Quick and dirty build file
#

SHELL := /bin/sh
RM := rm -rf

# preprocessor includes
CPPFLAGS += -I/opt/local/include
CPPFLAGS += -I$(PWD)/include/catch/include

# C compiler 
CC = clang
CFLAGS = -g -O3

# C linker
LD = $(CC)
LDFLAGS =
#LDLIBS = -lgmp

# C++ compiler
CXX = clang++
CXXFLAGS = -std=c++11 -stdlib=libc++ -Wall -Wconversion -g -O3 -fno-exceptions #-fno-elide-constructors

# C++ linker
LDXX = $(CXX)
LDXXFLAGS =
#LDXXLIBS = -lgmpxx -lgmp

# linker base libs
LOADLIBES = -L/opt/local/lib

# linking commands
LINK.c = $(CC) $(CFLAGS) $(CPPFLAGS) $(LDFLAGS)
LINK.cc = $(CXX) $(CXXFLAGS) $(CPPFLAGS) $(LDXXFLAGS)
LINK.o = $(LDXX) $(LDXXFLAGS)

#OUTPUT_OPTION = -o bin/$@

.PHONY: all init clean

all: init
	@echo Nothing to do!

init:
	mkdir -p bin

clean:
	$(RM) *.o bin

#%.o: %.c
#	$(CC) $(CFLAGS) $(CPPFLAGS) -c $<
#
#%.o: %.cc
#	$(CXX) $(CXXFLAGS) $(CPPFLAGS) -c $<
#
#%.o: %.cpp
#	$(CXX) $(CXXFLAGS) $(CPPFLAGS) -c $<

%: %.c
	$(LINK.c) $^ $(LOADLIBES) $(LDLIBS) -o bin/$@

%: %.cc
	$(LINK.cc) $^ $(LOADLIBES) $(LDXXLIBS) -o bin/$@

%: %.o
	$(LINK.o) $^ $(LOADLIBES) $(LDXXLIBS) -o bin/$@

