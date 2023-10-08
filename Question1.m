%Abdul-Rahman Abdel-Fattah Student ID: 210046015 
%Question 1 

X = [7,  9,  9,  11,  8,  15,  14,  12,  15,  13,  26,  19,  21,  18,  19,  24,  27,  24,  26,  20];
sortedX = sort(X);
max2 = sortedX(1,20);
min = sortedX(1,1);

bin1 =[]; 
bin2 = []; 
bin3 = [];
bin4 = []; 

distance = (max2 - min)/4 ;

bin1(1) = sortedX(1);
for i=2:20
    if sortedX(i)<= 12
        bin1(i)= sortedX(i);
        bin1_mean = mean(bin1);
        bin1_median = median(bin1);
        bin1_smooth_mean(1:length(bin1)) = bin1_mean;
        bin1_smooth_median(1:length(bin1)) = bin1_median;
    elseif sortedX(i)> 12 & sortedX(i)<=17 
        bin2(i)= sortedX(i);
        bin2 = nonzeros(bin2);
        bin2 = bin2.';
        bin2_mean = mean(bin2);
        bin2_median = median(bin2);
        bin2_smooth_mean(1:length(bin2)) = bin2_mean;
        bin2_smooth_median(1:length(bin2)) = bin2_median;
    elseif sortedX(i)> 17 & sortedX(i)<=22  %#ok<*AND2> 
        bin3(i)= sortedX(i);
        bin3 = nonzeros(bin3);
        bin3 = bin3.';
        bin3_mean = mean(bin3);
        bin3_median = median(bin3);
        bin3_smooth_mean(1:length(bin3)) = bin3_mean;
        bin3_smooth_median(1:length(bin3)) = bin3_median;
    else
        bin4(i)= sortedX(i);
        bin4 = nonzeros(bin4);
        bin4 = bin4.';
        bin4_mean = mean(bin4);
        bin4_median = median(bin4);
        bin4_smooth_mean(1:length(bin4)) = bin4_mean;
        bin4_smooth_median(1:length(bin4)) = bin4_median;
    end
end
for y = 2:length(bin1)
   bin1_smooth_boundary(1:length(bin1)) = bin1(1);
end
for y = 2:length(bin2_smooth_median)
   bin2_smooth_boundary(1:length(bin2)) = bin2(1);
end
for y = 2:length(bin3)
   bin3_smooth_boundary(1:length(bin3)) = bin3(1);
end

for y = 2:length(bin4)
   bin4_smooth_boundary(1:length(bin4)) = bin4(1);
end
disp('Bin 1');
disp(bin1);
disp('Bin 1 : Smoothing by Mean');
disp(bin1_smooth_mean);
disp('Bin 1 : Smoothing by Median');
disp(bin1_smooth_median);
disp('Bin 1 : Smoothing by Lower Boundary');
disp(bin1_smooth_boundary);

disp('Bin 2');
disp(bin2);
disp('Bin 2 : Smoothing by Mean');
disp(bin2_smooth_mean);
disp('Bin 2 : Smoothing by Median');
disp(bin2_smooth_median);
disp('Bin 2 : Smoothing by Lower Boundary');
disp(bin2_smooth_boundary);

disp('Bin 3');
disp(bin3);
disp('Bin 3 : Smoothing by Mean');
disp(bin3_smooth_mean);
disp('Bin 3 : Smoothing by Median');
disp(bin3_smooth_median);
disp('Bin 3 : Smoothing by Lower Boundary');
disp(bin3_smooth_boundary);

disp('Bin 4');
disp(bin4);
disp('Bin 4 : Smoothing by Mean');
disp(bin4_smooth_mean);
disp('Bin 4 : Smoothing by Median');
disp(bin4_smooth_median);
disp('Bin 4 : Smoothing by Lower Boundary');
disp(bin4_smooth_boundary);