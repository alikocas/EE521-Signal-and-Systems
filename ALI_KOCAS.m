%% soru 1
%% A ÞIKKI
fs = 100000;
t = 0:1/fs:1.5;
x1 = sawtooth(2*pi*100*t);
subplot(2,1,1)
plot(t,x1)
axis([0 0.2 -1 1])
xlabel('Time (sec)')
ylabel('Amplitude') 
title('Sawtooth Periodic Wave')
%% B ÞIKKI
fs = 1000000;
t = 0:1/fs:1.5;
x2 = square(2*pi*20*t);
subplot(2,1,2)
plot(t,x2)
axis([0 0.2 -1 1])
xlabel('Time (sec)')
ylabel('Amplitude')
title('Square Periodic Wave')
%% C ÞIKKI
fs = 100000;
t = -1:1/fs:1;
x1 = tripuls(t,100e-3);
subplot(2,1,1)
plot(t,x1)
axis([-0.1 0.1 -0.2 1.2])
xlabel('Time (sec)')
ylabel('Amplitude')
title('Triangular Aperiodic Pulse')
%% D ÞIKKI
x2 = rectpuls(t,50e-3);
subplot(2,1,2)
plot(t,x2)
axis([-0.1 0.1 -0.2 1.2])
xlabel('Time (sec)')
ylabel('Amplitude')
title('Rectangular Aperiodic Pulse')
%% E ÞIKKI
tc = gauspuls('cutoff',1e6,0.5,[],-60); 
t1 = -tc : 1e-6 : tc; 
y1 = gauspuls(t1,50e3,0.6);
t2 = linspace(-5,5);
y2 = sinc(t2);
subplot(2,1,1)
plot(t1*1e3,y1)
%% F ÞIKKI
fs = 200E9;                    
D = [2.5 10 17.5]' * 1e-9;     
t = 0 : 1/fs : 2500/fs;        
w = 2e-9;                     
yp = pulstran(t,D,@rectpuls,w);
subplot(2,1,1)
plot(t*2e9,yp);
axis([0 25 -0.2 1])
xlabel('Time (ns)')
ylabel('Amplitude')
title('Rectangular Train')
%% E ÞIKKI
fs = 5E4;   
T = 0 : 1/50e3 : 10e-3;
D = [0 : 1/1e3 : 10e-3 ; 0.6.^(0:10)]';
Y = pulstran(T,D,@gauspuls,50E3,.5);
subplot(2,1,2)
plot(T*1e3,Y)
xlabel('Time (ms)')
ylabel('Amplitude')
title('Gaussian Pulse Train')
%% SORU 3
%% A ÞIKKI
fs=1E4 
f=20 
t=0:1/fs:1
y1=sin(2*pi*f*t)
subplot(2,1,1)
plot(t,y1,'LineWidth',2)
y2=cos(2*pi*f*t)
subplot(2,1,2)
plot(t,y2,'LineWidth',2)
grid on
% B ÞIKKI
n=-36:1:36
y=sin(2*pi*n/36)
subplot(2,1,1)
stem(n,y)
y1=cos(2*pi*n/36)
subplot(2,1,2)
stem(n,y1)
%% SORU 5
n=-50:50
y=(0.9.^abs(n)).*sin(2*pi*n/4)
sum(abs(y.^2))

