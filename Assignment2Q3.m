A = [-2,2,-3;2,1,-6;-1,-2,0];
[eigenVector1,eigenValue1] = eig(A);
transposeA = A' ; 
[eigenVector2,eigenValue2] = eig(transposeA);
inverseA = A^-1 ; 
[eigenVector3,eigenValue3] = eig(inverseA);

disp("I have observed that eigen values of A and the transposed of A are same and inverse for A inverse. Eigen vectors of A and A inverse are the same");

