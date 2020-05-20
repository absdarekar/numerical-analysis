%algorithm: Successive Approximation Algorithm
%author: Atharv Darekar
clear;
clc;
f=inline(input("Enter a function f(x)\n","s"));
y=inline(input("Enter a function g(x)\n","s"));% derived form of f(x) such that x=g(x), an iteration function
x_i=input("Enter initial guess value\n");
e=input("Enter tolerance or error\n");
while (abs(f(x_i))>=e)% WARNING: possibility of infinite loop, depends on choice of g(x)
  x_i=y(x_i);
endwhile
fprintf("The approximate root is %d \n",x_i);
