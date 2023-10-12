%% Problem 3
% The below function is to transfer a function from s to z domain using the
% matched z-transform
function [bz,az,k]= AK_C2D_match(b,a,h,omegabar,sp)
% The below if statement is if I want my Dz to be proper, so we dont need
% to include anything for the input 'sp'. See testing_h1p3.m 
if nargin < 5
    sp = false;
end
% Setting up the transfer functions, transfering poles from s to z domain
Ds=RR_tf(b,a)
% num=RR_poly(b) 
zeros= Ds.z
% den=RR_poly(a)
poles=Ds.p
zz=exp(zeros*h)
zp=exp(poles*h)
% The below while loop is to make the function strictly proper by adding
% z=-1
    while length(zp)>length(zz)
        zz(length(zz)+1)= -1
    end
% the below is our output, Dz and the magnatude
bz=RR_poly(zz,1);
az=RR_poly(zp,1);
Dz=RR_tf(bz,az);
ks= RR_evaluate(Ds,i*omegabar*h);
kz=RR_evaluate(Dz,i*omegabar);
k=kz/ks;
    if sp == true
        zz(end)= [];
    end
end


%Find zeros of b and poles of a

%Transform to z domain using z = exp(s*h)

%so you have bz, az D(Z) = bz/az

%Magnitude of D(j*omega)/ D(z) evaltuated at exp(j*omega*h)
% check length of zeros and poles and the difference if p>z = one inf zeros









%D(s)=(s+z1)/[s*(s+p1)];
%z=tf('z',h)
% z1=1;
% p1=10;
% h=0.01
% omega_bar=0;