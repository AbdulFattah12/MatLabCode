Z=[1 2 3 4;5 6 7 8;9 10 11 12;13 14 15 16];
char_eqn=charpoly(Z);
eigenvalues = roots(char_eqn);
eigenvalues;
[v,d] = eig(Z)
eigenvalues