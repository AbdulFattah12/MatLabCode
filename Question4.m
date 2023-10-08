%Abdul-Rahman Abdel-Fattah Student ID: 210046015 
%Question 4
im = uint8(zeros(256,256));
im(:,:)=100;
endd = 256;

im(1:32,1:32)= 50; 
im(endd-31:endd,endd-31:endd)= 250;
im(1:32, endd-31:endd)= 200 ; 
im(endd-31:endd, 1:32)= 150 ; 

subplot(2,2,1)
imshow(im)
title('original image')

subplot(2,2,2)
imhist(im)
title('histogram of the original image')

im_eq = histeq(im); 

subplot(2,2,3)
imshow(im_eq)
title('Equalized image')

subplot(2,2,4)
imhist(im_eq)
title('Histogram of Equalized  image')

