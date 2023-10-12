%% Test for P3
clear all
clc
b=[ -1];
a=[-10 0];
h=0.01;
omegabar=0;
sp=true;
T=tf(b,a);
my_amswer=AK_C2D_match(b,a,h,omegabar,sp)
matlab_answer=c2d(T,h,'matched')
%%%% Test for P3-syms
syms p1 z1
b=[ z1];
a=[p1 0];
h=0.01;
omegabar=0;
sp=true;
T=tf(b,a);
my_amswer=AK_C2D_match(b,a,h,omegabar,sp)
matlab_answer=c2d(T,h,'matched')

