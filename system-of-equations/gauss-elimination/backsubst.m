%algorithm: Back Substitution
%author: Atharv Darekar
function X = backsubst (n,A) %gets number of unknowns and reduced coefficient and constant matrix in augmented form
  X(1,n)=A(n,n+1); %assigns the constant associated with nth unknown to solution vector's nth column
  i=n-1;
  while (i>=1)
    d=0; %difference variable
    for j=1:n %following snippet does the back substitution and assigns solution of corresponding unknowns to associated column of solution vector
      d+=A(i,j)*X(1,j);
    endfor
    X(1,i)=A(i,n+1)-d;
    i--;
  endwhile
endfunction
