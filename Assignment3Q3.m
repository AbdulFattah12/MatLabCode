% Abdul-Rahman Abdel-Fattah (210046015) 
%Question 3
A = [ 2 7; 0 0 ; 4 2 ];
[v,d] = eig(A'*A); 
V = v' ; 
E = zeros(size(A)); 
for i =1:size(E,2)
    E(i,i) = sqrt(d(i,i));
end

U = [] ; 
for i =1:size(d,1)
    temp = (1/E(i,i))*A*v(:,i)
    U = [ U temp];
end

for i = 1:(size(A,1)-size(A,2))
    b = zeros(size(A,2),1);
    temp = linsolve(A',b);
    if temp ~= 0 
        temp = temp/norm(temp);
    end
    U = [U temp];
end
a=U*E*V';