%algorithm: Newton Raphson's Algorithm
%author: Atharv Darekar
clear;
clc;
flag1=0;
flag2=0;
flag3=0;
i=0;
f=input("Enter a function f(x)\n","s");
y=inline(f);
f_1=input("Enter first derivative of the function f(x)\n","s");
y_1=inline(f_1);
x_i=input("Enter a guess value of a root \n");
n=input("Number of iterations (minimum 20)\n");
t=input("Enter tolerance or error\n");
if (y(x_i)<=t) %true if the initial guess is root.
  flag1=1; %flags true if above condition satisfies.
  fprintf("The approximate root is %d \n",x_i);
endif
if ((y_1(x_i)==0)&&!(flag1)) %checks convergence condition.
  flag2=1; %flags true if above condition satisfies.
  fprintf("Enter some other number\n");
endif
while ((!flag1)&&(!flag2)&&(i<=n)) %checks for flags and iterates n times.
  x_i-=y(x_i)/y_1(x_i); %approximation reassigned to initial variable.
  i++; %counter variable.
endwhile
if (abs(y(x_i))<=t) %true if tolerance is achieved.
  flag3=1; %flags true if above condition satisfies.
  fprintf("The approximate root is %d \n",x_i);
endif
if (!(flag3)&&(i>n)) %true if root not found after n iterations.
  fprintf("The approximate root is not yet found number of iterations done %d \n",i);
endif
