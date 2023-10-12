%% Test for P3
clear all
clc
syms p1 z1
b=[z1];
a=[p1 -4 3];
h=0.01;
omegabar=0;
sp=true;
AK_C2D_match(b,a,h,omegabar);
