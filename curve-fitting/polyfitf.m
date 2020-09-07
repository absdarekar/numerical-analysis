%algorithm: Returns polynomial function of Nth degree
%author: Atharv Darekar
function f = polyfitf(N,a) %gets degree of polynomial and coefficient matrix
  setenv PYTHON python3; %sets environmental variable
  pkg load symbolic; %loads symbolic package
  j=N; %counter
  for i=0:N %creates variable matrix
    f(i+1,1)=power(sym('x'),j);
    j--;
  endfor
  f=function_handle(vpa(a)*f); %creates polynomial function 
endfunction