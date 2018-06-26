original_data=load('Pt2dataN2sinus.mat');
data=original_data.dataN2;
[L,N]=size(data);
data_sample=data;

for layer = 1:N
    fp=fopen(['./real_healthy/series_healthy_', num2str(layer), '.dat'],'w');
    for i = 1 : L
        fprintf(fp,'%f\n',data_sample(i,layer));
    end
    fclose(fp);
end