datatype = 1;         % Define the data type to be analyzed (1-Synthetic, 2-Patient)
filename = 'Pt2dataN2sinus.mat';

if datatype==1
    data0=u(1:10:end, 1:10:end, :); 
    [rr,cc,ff]=size(data0);
    data=reshape(data0, [rr*cc], ff);
    clear data0 u
elseif datatype==2
    original_data=load(filename);
    data=original_data.dataN2;
end
 

[L,N]=size(data');
data_sample=data';

for layer = 1:N
    fp=fopen(['ANATOMICAL_', num2str(layer), '.dat'],'w');
    for i = 1 : L
        fprintf(fp,'%f\n',data_sample(i,layer));
    end
    fclose(fp);
end