%algorithm: Zero Pivoting
%author: Atharv Darekar
function A = zeropivot (n,A,k) %gets number of unknowns, coefficient and constant matrix in augmented form and diagonal element number for zero pivoting
  for i=1:n
    if ((A(i,k)==0)&&((i+1)<=n)) %checks elements of column corresponding to diagonal element for zero
        if ((A(i+1,k)!=0)) %checks the corresponding element of next row of the zero diagonal element for zero
          for j=1:n+1 %performs row interchange operation between zero diagonal element row and next corresponding non-zero diagonal element row
            A(k,j)+=A(i+1,j); %following snippet swaps the individual row elements without using a third variable
            A(i+1,j)=A(k,j)-A(i+1,j);
            A(k,j)-=A(i+1,j);
          endfor
        endif
    endif
  endfor
endfunction