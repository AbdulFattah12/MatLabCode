%Abdul-Rahman Abdel-Fattah Student ID: 210046015 
%Question 2

S = [20 0; 21 0; 22 0; 24 0; 24 1; 25 0; 25 1 ; 26 0; 27 0 ; 28 0; 28 1; 29 0; 29 1; 30 1; 33 0; 34 1; 35 1 ; 39 1; 41 1; 42 1];
[n,m] = size(S); 
p = sum(S(:,2)==1)/n ; 
q = 1- p; 
H = -p*log2(p)-q*log2(q);
t = sort(S(:,1));
tau = (t(1:n-1)+t(2:n))/2; 

G=[]; 
for i =1:length(tau)
    I1 = (S(:,1)<= tau(i));
    S1 = S(I1,:);
    S2 = S(~I1,:);
    [n1,m1]= size(S1);
    [n2,m2]= size(S2);

    p1 = sum(S1(:,2)== 0)/n1;
    q1 = 1-p1; 
    p2 = sum(S2(:,2)== 0)/n2;
    q2 = 1-p2;

    if (p1==1 || q1==1)
        H1 = 0; 
    else
        H1 = -p1*log2(p1)-q1*log2(q1);
    end

    if (p2==1 || q2==1)
        H2 = 0; 
    else
        H2 = -p2*log2(p2)-q2*log2(q2);
    end

    H12 = (n1*H1 + n2*H2) /n ; 
    G = [G; (H-H12)];
end 

[Gm,im] = max(G); 
taum = tau(im); 

plot(tau,G,'lineWidth',1.5),grid
title('Threshold vs Information Gain')
xlabel('Threshold, \tau')
ylabel('Information Gain')
disp('The Information Gain:'); 
disp(Gm); 

hold on 

plot(taum, Gm, 'o', 'Color', 'r')
disp('Optimum Threshold:')
disp(max(taum)); 