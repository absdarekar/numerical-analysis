%algorithm: Convergence Algorithm
%author: Atharv Darekar
function flag = conv(n,A) %gets number of unknowns and coefficient matrix
  flag=0; %initialization of flag
  for i=1:n
    d(1,i)=A(i,i); %diagonal vector
  endfor
  D=diag(d); %Diagonal matrix of given coefficient matrix
  LU=A-D; %Sum of lower and upper triangular matrix of given coefficient matrix
  if(max(abs(eig(inv(D)*LU)))<1) %if spectral radius of the iteration matrix is less than 1
    flag=1;
  endif
endfunction