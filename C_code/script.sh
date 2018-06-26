#!/bin/bash

#Number of layers in the network
N=64 
for (( i = 1; i <= $N; i++ )) 
do
	./visgra series_healthy_$i.dat 0 > data_$i.dat
	./deg_dist SEQ_ROW data_$i.dat  > degree_distr_$i.txt
	rm data_$i.dat
done

