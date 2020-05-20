%algorithm: Bisection Algorithm
%author: Atharv Darekar
clear;
clc;
flag1=0;
x_m=0;
f=input("Enter a function f(x)\n","s");
y=inline(f);
x_u=input("Enter upper limit of range\n");
x_l=input("Enter lower limit of range\n");
n=input("Enter tolerance or error\n");
if((y(x_u)*y(x_l))<0) %checks convergence condition.
  flag1=1; %flags true if above condition satisfies.
  fprintf("Root lies in the given range. \n");
  x_m=(x_u+x_l)/2; %calculates the mean of limits.
  while (abs(y(x_m))>=n) %iterates as long as the tolerance is not achived.
    x_m=(x_u+x_l)/2;
    if ((y(x_l)*y(x_m))<=0) %if true, replaces upper limit with mean.
      x_u=x_m;
    else
      x_l=x_m; %if false, replaces lower limit with mean.
    endif
  endwhile
  fprintf("The approximate root is %d \n",x_m);
endif
if(!flag1)
  fprintf("Convergence condition not satisfied\n");
endif

