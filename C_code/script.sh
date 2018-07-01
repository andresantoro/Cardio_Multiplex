#!/bin/bash

#Number of layers in the network
N=64 
for (( i = 1; i <= $N; i++ )) 
do
	./visgra sw7/series_healthy_$i.dat 0 > sw7/data_$i.dat
	./deg_dist SEQ_ROW sw7/data_$i.dat  > sw7/degree_distr_$i.txt
	rm data_$i.dat
done

