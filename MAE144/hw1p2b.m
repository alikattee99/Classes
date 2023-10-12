%% Problem 2-b
% since we got x<y in y/x which is the controller"D(s)", therefore the controller is
% inproper in 2a. x was 3rd degree while y was 5th degree. For 2b, we can
% show that if we add 6 additional poles at s=-20, the controller becomes
% proper, that is because it will change x to be in the 7th degree while y
% stays as a 3rd degree x>y.
b=RR_poly([-2 2 -5 5],1)
a=RR_poly([-1 1 -3 3 -6 6],1)
f=RR_poly([-1 -1 -3 -3 -6 -6 -20 -20 -20 -20 -20 -20],1)
[x,y]=RR_diophantine(a,b,f)
test=trim(a*x+b*y)
residual=norm(f-test)