n = 20;
X = [28;  50;  61;  72;  80;  51;  20;  35;  28;  97;  37;  64;  46;  67;  34;   21;  21;  59;  46;  46]';
Y = [62;  87;  88;  109;  95;  104;  58;  82;  70;  102;  67;  104;  83;  89;  69;  68;  65;  103;  78;  102]';

%a) 
Xmean = mean(X); 
Xmedian = median(X);
 
%b)

sum2=0;
for i=1:length(X)
    sum2=sum2+ (X(i)-Xmean)^2;
end
Xvariance=sum2/length(X); %Varaince


%c) 
variablesXY = [X;Y]';
variablesXYmean = [mean(X);mean(Y)];

%d) 
covarienceM = (1/n) *(variablesXY-1*variablesXYmean')'*(variablesXY-1*variablesXYmean');
builtIn = cov(variablesXY);
%e)

covarienceM
Z = poly(covarienceM);
E_values = roots(Z)

for i = 1:length(E_values)
    M_shift = covarienceM-E_values(i)*eye(size(covarienceM));
    M_reduced = rref(M_shift);
    E_vector{i} = null(M_reduced,'r');
end

E_vec_final(:,1)= E_vector{1}/norm(E_vector{1}) 
E_vec_final(:,2)= E_vector{2}/norm(E_vector{2}) 


%f)

over75 = 0 ; 
for j = 1:length(X)
    if X(j) >= 75
        over75 = over75 +1; 
    end
end
probability75 = (over75 / length(X))* 100; 
disp("The probability of observing an age of 75 or higher is " + probability75 + "%")

%g)

correlationAgeWeight = covarienceM(1,2)/ (sqrt(covarienceM(1,1) * (covarienceM(2,2)))) ; 
disp("The correlation between age and weight is: " + correlationAgeWeight)

%h)
scatter(X,Y)
xlabel('Age');
ylabel('Weight');
title('Age vs Weight');
hold on ; 

scatter(Y,X,"filled")
ylabel('Age');
xlabel('Weight');
title('Age vs Weight');
hold on ; 

