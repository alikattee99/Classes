%% Problem 1
%1a
s=tf("s");
Gd=tf([0.1*1.998],[1 0.1],'InputDelay',6)
G=tf([0.1],[1 0.1],'InputDelay',6)
Gs=pade(Gd,2)
[Gain_m,Phase_m]= margin(Gs)
(bode(Gs))
%rlocus(Gs)
%% 4a
T=(2*0.4)*(s^2 +s/0.4 +1/(0.4*1.6))/s
L=T*Gs
bode(L)
rlocus(L)
[Gm,Pm]= margin(L)
%% P 6 
s=tf("s");
G=tf([0.1],[1 0.1 0])
Gd1 = c2d(G,2,'mathced');
T=(2.59*1.86)*(s^2 +s/1.86 +1/(7.445*1.86))/s
Tz=c2d(T,'mathced')

