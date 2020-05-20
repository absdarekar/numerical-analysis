%algorithm: Jacobi's Iteration Algorithm
%author: Atharv Darekar
function X = J_iter(n,A,X) %gets number of unknowns, diagonally dominant coefficient matrix and solution vector
  x=X; %initialization of step vector by solution vector
  for i=1:n
    d=0; %difference variable
    for j=1:n
      if(i!=j)
        d+=A(i,j)*x(j,1);
      endif
    endfor
    X(i,1)=(A(i,n+1)-d)/A(i,i); %assignment to solution vector
  endfor
endfunction
