% Abdul-Rahman Abdel-Fattah (210046015) 
%Question 2 

x = [63, 77, 72, 93, 94, 70, 49, 63, 50, 109, 75, 90, 83, 84, 85, 64, 58, 108, 74, 80]
y = [28, 50, 61, 72, 80, 51, 20, 35, 28, 97, 37, 64, 46, 67, 34, 21, 21, 59, 46, 46]
mean(x)
mean(y)
A = [mean(x); mean(y)];
A = [x-mean(x); y-mean(y)];

S = cov(A,1)


S = cov(x,y,1)
[V,L] = eig(S)
[Value,index] = max(diag(L))
V_max = V(:,index)

Z = A

[a b] = size(Z)

NewData = V_max'*Z  
-NewData % due to negative eigenvector
