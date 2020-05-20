%algorithm: Gauss Elimination Algorithm
%author: Atharv Darekar
clear;
clc;
n=input("Enter number of unknowns\n");
fprintf("Enter values of matrix row wise\n");  
for i=1:n %gets coefficients of terms and constants row wise
    for j=1:(n+1) %augmented matrix
       fprintf("row = %d\ncolumn =%d",i,j);
       A(i,j)=input("\n");
    endfor
endfor
X=A(1:n,1:n);
if (round(det(X))==0) %checks determinant of given coefficient matrix
  fprintf("The given system either has no solution or has infinite solutions\n");
else
  A = rowreduce (n,A); %calls function for row reduction
  X = backsubst (n,A); %calls function for back substitution
  fprintf("The solution for the given system is\n");
  disp(X); %prints solution vector
endif
