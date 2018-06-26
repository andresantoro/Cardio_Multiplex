/*****************************************************************************
*This is the C program for computing the Visibility Graphs as described
*in the orginal paper:
*[1] From time series to complex networks: the visibility graph
*Lucas Lacasa, Bartolo Luque, Fernando Ballesteros, Jordi Luque, Juan C. Nuño
*PNAS, vol. 105, no. 13 (2008) 4972-4975
*
*    Copyright (C) 2018 by
*    Andrea Santoro <a.santoro@qmul.ac.uk>
*    All rights reserved.
*    BSD license.
*
*
*The author takes no responsability on this code. Although I have
*checked for bugs, I don't guarantee the lack of them!
*****************************************************************************/


#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void usage(char *argv[]){
  printf(
	"******************************************************************************\n"
	"**                                                                          **\n"
	"**                 Computation the visibility graphs from a                 **\n"
	"**                               time series                                **\n"
	"**                                                                          **\n"
	"**                                                                          **\n"
	"**           <filein> should be the file containing the time series         **\n"
	"**                                                                          **\n"
	"**                                                                          **\n"
	"**           <0/1> 0 -> For natural visibility graphs                       **\n"
	"**           			1 -> For horizontal visibility graphs (not implemented)  **\n"
	"**                                                                          **\n"
	"******************************************************************************\n");
  printf("Usage: %s  <filein> <Natural VG 0/ Horizontal VG 1> \n\n" , argv[0]);
}

double *read_file(char *files, int *N);
void compute_natural_visibility(double *H, int N);
void compute_horizontal_visibility(double *H, int N);
int max_value(int *array, int N);


int main(int argc, char  *argv[])
{
	//Size of the time series
	int N;
	double *H;
	double flag_NH;
		if (argc <= 2){
    usage(argv);
    exit(1);
  	}
	H=read_file(argv[1], &N);
	flag_NH= atoi(argv[2]);
	fprintf(stderr,"Number of elements in the time series:%d \n",N);
	if (flag_NH  == 0)
		compute_natural_visibility(H,N);
	//else
	//	compute_horizontal_visitibility(H,N);


}


double *read_file(char *files, int *N)
{
	FILE *fp;
	char line[100],openfile[100],stringa[200];
	char* token;
	int i=0,scan=0,size=10000;
	double *array;
	array = (double *)calloc(size,sizeof(double));
	fp= fopen(files,"r");

	while(scan!=EOF)
  {
    scan=fscanf(fp,"%lf",&array[i]);
    if(i==size)
    {
      size+=10000;
      array=(double *)realloc(array,size*sizeof(double));
    }
   	i++;
  }
  i--;
  fprintf(stderr,"length:%d\n",i );
  *N=i;

  array=(double *)realloc(array,i*sizeof(double));
  fclose(fp);
	return(array);
}


void compute_natural_visibility(double *H, int N)
{
	int *degree,*degree_out,*degree_in, *hist_degree, *hist_degree_in, *hist_degree_out;
	degree = (int *)calloc(N,sizeof(int));
	degree_in = (int *)calloc(N,sizeof(int));
	degree_out = (int *)calloc(N,sizeof(int));
	FILE *fp;
	int alpha = 1,i,j;
	double criterio, current;
	int max1,max2,max3;
	//Main structure of the algorithm
	//fp = fopen("adj_vgCcode.txt","w+");
	for (i=0; i<N-1; i++)
	{
		degree_out[i] = degree_out[i]+1;
		degree_in[i+1]= degree_in[i+1]+1;
		degree[i] = degree[i]+1;
		degree[i+1] = degree[i+1]+1;
		printf("%d %d\n", i+1,i+2);
		//fprintf(fp,"%d %d\n", i+2,i+1);
		criterio= H[i+1]-H[i];
		for (j=1; j<N-i;j++)
		{
			current =  (1.0*(H[i+j]-H[i]))/(j*1.0);
				if(criterio < current)
				{
					degree_out[i] = degree_out[i]+1;
					degree_in[i+j]= degree_in[i+j]+1;
					degree[i]=degree[i]+1;
					degree[i+j]=degree[i+j]+1;
					printf("%d %d\n", i+1,i+j+1);
				 	//fprintf(fp,"%d %d\n", i+j+1,i+1);
				 	criterio=current;
				}
		}
	}
	//fclose(fp);

}


int max_value(int *array,int N)
{
	int max= -100000;
	int i;
	for (i=0; i<N;i++)
		if (array[i]> max)
			max = array[i];
	return(max);
}