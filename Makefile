# Makefile for ql motorola .ro format linker
CC = g++
OPT = -std=c++20
DEB = -g
CFLAGS = $(OPT) $(DEB)
LFLAGS =

ql: ql.o fmt/format.o
	$(CC) $(LFLAGS) ql.o fmt/format.o -lstdc++ -o ql

%.o: %.cpp
	$(CC) $(CFLAGS) -c -o $@ $<

all: ql

rebuild:
	make clean
	make ql

.PHONY: clean
clean:
	rm -f -v *.~*
	rm -f -v *.*~
	rm -f -v *~
	rm -f -v .~*
#
	rm -f -v ql
#
	rm -f -v *.o
#
	rm -f -v *.sr
	rm -f -v *.bin
	rm -f -v *.xref
