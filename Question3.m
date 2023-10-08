%Abdul-Rahman Abdel-Fattah Student ID: 210046015 
%Question 3
I=imread('cameraman.tif');
[r,c]=size(I);
J=double(I);
L=255;
[N, X]=imhist(I);
N1=N/(r*c);
HistEqImg=J;
for i=1:r
for j=1:c
k=J(i,j);
HistEqImg(i,j)=(L-1)*sum(N1(1:k+1));
end
end
subplot(2,2,1)
imshow(I)
title('Original image')
subplot(2,2,2)
imhist(I)
title('Histogram of the original image')
subplot(2,2,3)
imshow(uint8(HistEqImg))
title('Equalized Image')
subplot(2,2,4)
imhist(uint8(HistEqImg))
title('Histogram of Equalized Image')