CC=gcc
CFLAGS=-I./ -g -O3 

OBJS=

EXES=./visibility_graph 

all: visibility_graph

clean:
	rm -f $(EXES)

visibility_graph: compute_visibility_graph.c -lm
		$(CC) $(CFLAGS)  compute_visibility_graph.c -lm -o visgra

