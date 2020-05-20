%algorithm: Row Reduction
%author: Atharv Darekar
function A = rowreduce (n,A) %gets number of unknowns and coefficient and constant matrix in augmented form
  i=1;
  while (i<=n)
    if(A(i,i)==0) %checks if diagonal element is zero
      A = zeropivot (n,A,i); %calls function for zero pivoting
    endif
    A(i,1:n+1)/=A(i,i); %reduces the row's diagonal element to one by dividing the row by the diagonal element
    j=n;
    while (j>i)
      if (A(j,i)!=0) %checks for zero element in column corresponding to the diagonal element
        A(j,1:n+1)=A(j,1:n+1)/A(j,i)-A(i,1:n+1); %reduces the elements of column below the diagonal element to zero by row operations
      endif  
      j--;
    endwhile
    i++;
  endwhile
endfunction
