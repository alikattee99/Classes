clear all
clc
%% Problem 2-a
b=RR_poly([-2 2 -5 5],1)
a=RR_poly([-1 1 -3 3 -6 6],1)
f=RR_poly([-1 -1 -3 -3 -6 -6],1)
[x1,y1]=RR_diophantine(a,b,f1)
test_1=trim(a*x1+b*y1)
residual=norm(f1-test1)
