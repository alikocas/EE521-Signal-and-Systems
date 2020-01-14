%SORU1
num=[5 -3 0]
den=[56 15 1]
[r,p,k]=residue(num,den)
figure(1)
zplane(num,den)
[x,k]=impz(num,den)
figure(3)
stem(x,'filled')
syms z
F=5-3*z^-1/z^-2+15*z^-1+56;
iztrans(F)

%% Soru 3
syms t
F=(4-4*exp(1)-2*t*cos(t)+2*exp(1)-2*t*sin(t))
laplace(F)

%% Soru 4


syms s

%Soru 4 A ??kk?

F = s+5/(s*(s-4)^2);
ilaplace(F)

%Soru 4 B ??kk?

den=[1 -4 4 0] 
[z,p,k] = tf2zp(num,den)

%Soru 4 C ??kk?

H = tf(num,den);
pzmap(H)

%%%%%%%%%%%%%%%%%5.soru
x=[0 -5 -3 0 0 1 -8 0];
h=[-5 0 0 00 0 -6 0 1];
y=conv(x,h)
stem(y)

%%%%%%%%%%%%%%%%%6.soru
syms s
D=(5*(s-3))/(s^2+6*s+8)
K=tf([3],[1 6 8])
zeros=[3]
poles=[1 6 8]
[a,b,c]=tf2zp(zeros,poles)
zplane(a,b)