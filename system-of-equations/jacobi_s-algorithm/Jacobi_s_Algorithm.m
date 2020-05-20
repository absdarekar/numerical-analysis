%algorithm: Jacobi's Algorithm
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
if (round(det(A(1:n,1:n)))==0) %checks determinant of given coefficient matrix
  fprintf("The given system either has no solution or has infinite solutions\n");
else
  if(conv(n,A(1:n,1:n))) %calls function to check convergence condition
    fprintf("Convergence condition satisfied\n");
    N=input("Enter number of iterations (minimum 20)\n");
    X=zeros(n,1); %initialization of solution vector
    while(N--)
      X=J_iter(n,A,X); %calls function for Jacobi's iterations
    endwhile
    fprintf("The solution for the given system is\n");
    disp(X); %prints solution vector
  else
    fprintf("Convergence condition not satisfied, the coefficient matrix must be diagonally dominant\n");
  endif
endif
