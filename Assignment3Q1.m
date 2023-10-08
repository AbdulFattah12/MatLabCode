% Abdul-Rahman Abdel-Fattah (210046015) 
%Question 1 
x = [ 2, 3 , 4 , 5, 6, 7] ; 
y = [ 1, 5 , 3 , 6, 7, 8] ; 

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

