#!/bin/bash

#Number of layers in the network
N=64 
for (( i = 1; i <= $N; i++ )) 
do
	./visgra sw7/SW7_$i.dat 0 > sw7/data_$i.dat
	./deg_dist SEQ_ROW sw7/data_$i.dat  > sw7/degree_distr_$i.txt
	#rm data_$i.dat
done

for (( i = 1; i <= $N; i++ )) 
do
	./visgra sw6/SW6_$i.dat 0 > sw6/data_$i.dat
	./deg_dist SEQ_ROW sw6/data_$i.dat  > sw6/degree_distr_$i.txt
	#rm data_$i.dat
done

for (( i = 1; i <= $N; i++ )) 
do
	./visgra sw5/SW5_$i.dat 0 > sw5/data_$i.dat
	./deg_dist SEQ_ROW sw5/data_$i.dat  > sw5/degree_distr_$i.txt
	#rm data_$i.dat
done

for (( i = 1; i <= $N; i++ )) 
do
	./visgra sw4/SW4_$i.dat 0 > sw4/data_$i.dat
	./deg_dist SEQ_ROW sw4/data_$i.dat  > sw4/degree_distr_$i.txt
	#rm data_$i.dat
done

for (( i = 1; i <= $N; i++ )) 
do
	./visgra sw4/SW4_$i.dat 0 > sw4/data_$i.dat
	./deg_dist SEQ_ROW sw4/data_$i.dat  > sw4/degree_distr_$i.txt
	#rm data_$i.dat
done

for (( i = 1; i <= $N; i++ )) 
do
	./visgra sw3/SW3_$i.dat 0 > sw3/data_$i.dat
	./deg_dist SEQ_ROW sw3/data_$i.dat  > sw3/degree_distr_$i.txt
	#rm data_$i.dat
done

for (( i = 1; i <= $N; i++ )) 
do
	./visgra sw2/SW2_$i.dat 0 > sw2/data_$i.dat
	./deg_dist SEQ_ROW sw2/data_$i.dat  > sw2/degree_distr_$i.txt
	#rm data_$i.dat
done


for (( i = 1; i <= $N; i++ )) 
do
	./visgra sw1/SW1_$i.dat 0 > sw1/data_$i.dat
	./deg_dist SEQ_ROW sw1/data_$i.dat  > sw1/degree_distr_$i.txt
	#rm data_$i.dat
done

for (( i = 1; i <= $N; i++ )) 
do
	./visgra planar1000/PLANAR1000_$i.dat 0 > planar1000/data_$i.dat
	./deg_dist SEQ_ROW planar1000/data_$i.dat  > planar1000/degree_distr_$i.txt
	#rm data_$i.dat
done

for (( i = 1; i <= $N; i++ )) 
do
	./visgra planar600/PLANAR600_$i.dat 0 > planar600/data_$i.dat
	./deg_dist SEQ_ROW planar600/data_$i.dat  > planar600/degree_distr_$i.txt
	#rm data_$i.dat
done

for (( i = 1; i <= $N; i++ )) 
do
	./visgra planar300/PLANAR300_$i.dat 0 > planar300/data_$i.dat
	./deg_dist SEQ_ROW planar300/data_$i.dat  > planar300/degree_distr_$i.txt
	#rm data_$i.dat
done

for (( i = 1; i <= $N; i++ )) 
do
	./visgra spot1000/SPOT1000_$i.dat 0 > spot1000/data_$i.dat
	./deg_dist SEQ_ROW spot1000/data_$i.dat  > spot1000/degree_distr_$i.txt
	#rm data_$i.dat
done

for (( i = 1; i <= $N; i++ )) 
do
	./visgra spot600/SPOT600_$i.dat 0 > spot600/data_$i.dat
	./deg_dist SEQ_ROW spot600/data_$i.dat  > spot600/degree_distr_$i.txt
	#rm data_$i.dat
done

for (( i = 1; i <= $N; i++ )) 
do
	./visgra spot300/SPOT300_$i.dat 0 > spot300/data_$i.dat
	./deg_dist SEQ_ROW spot300/data_$i.dat  > spot300/degree_distr_$i.txt
	#rm data_$i.dat
done

for (( i = 1; i <= $N; i++ )) 
do
	./visgra anatomical/ANATOMICAL_$i.dat 0 > anatomical/data_$i.dat
	./deg_dist SEQ_ROW anatomical/data_$i.dat  > anatomical/degree_distr_$i.txt
	#rm data_$i.dat
done
