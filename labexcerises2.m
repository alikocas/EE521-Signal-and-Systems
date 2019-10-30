%%sawtooth periodic Wawe
fs=100000;
t=0:1/fs:1.5;
f=100
x1=sawtooth(2*pi*f*t);
plot(t,x1)
axis([0 0.2 -1.2 1.2])
xlabel('Time(sec)')
ylabel('Amplitude')
title('Sawtooth Periodic Wawe')

%%
fs=1000000;
t=0:1/fs:1.5;
f=20
x1=square(2*pi*f*t);
plot(t,x1)
axis([0 0.2 -1.2 1.2])
xlabel('Time(sec)')
ylabel('Amplitude')
title('Square Periodic Wawe')

%% ct unit sample/unit step/unit ramp/unit quad
t=(-5:0.01:5);
impulse = t==0;
unitstep = t>=0;
ramp = t.*unitstep;
quad = t.^2.*unitstep;
subplot(2,2,1)
plot(t,impulse,'Linewidth',2,'Color','r')
subplot(2,2,2)
plot(t,unitstep,'Linewidth',2,'Color','g')
subplot(2,2,3)
plot(t,ramp,'Linewidth',2, 'Color','b')
subplot(2,2,4)
plot(t,quad,'Linewidth',2, 'Color','k')
grid on

%% soru 2-Dt unit ramp
clear all;
close all;
clc;
N=10;
n=0:1:N;
a=1; %amplitude factor
y=a*n;
stem(n,y, 'filled','LineWidth',2,'Color', 'b')
ylabel('amplitude');
xlabel('number of samples----->');
title('discrete ramp signal');
display(y);

%% CT sin signal
clc;
clear all;
close all;
fs=1000;               %sampling frequency
dt=1/fs;               %second per sample
StopTime=0.25;         %seconds
t=(0:1/fs:0.5);        %seconds
F=20;                  %sine wiwe Frequency
signal= sin(2*pi*F*t);
plot(t,signal,'Linewidth',2, 'Color','b')

%% CT Cos signal
clc;
clear all;
close all;
fs=1000;               %sampling frequency
T_s=1/fs;               %second per sample
StopTime=0.25;         %seconds
t=(0:T_s:0.5);        %seconds
F=20;                  %sine wiwe Frequency
signal= cos(2*pi*F*t);
plot(t,signal,'Linewidth',2, 'Color','b')
grid on
xlabel('\itt','Fontname','Times','FontSize',24);
ylabel('x[{\itt}]','Fontname','Times','FontSize',24);

%% DT Cos Signal
clc;
clear all;
close all;
n=0:36;
x=cos(2*pi*n/36);
p=stem(n,(x), 'k', 'filled');
set(p,'Linewidth',2, 'MarkerSize', 4);
xlabel('\itt','Fontname','Times','FontSize',24);
ylabel('x[{\itt}]','Fontname','Times','FontSize',24);

%% Dt Sin Signal
clc;
clear all;
close all;
n=0:105;
x=sin(2*pi*n/35);
p=stem(n,(x), 'k', 'filled');
set(p,'Linewidth',2, 'MarkerSize', 4);
xlabel('\itt','Fontname','Times','FontSize',24);
ylabel('x[{\itt}]','Fontname','Times','FontSize',24);

%% Cos Signal Sampling
clc;
clear all;
close all;
f=1000; %fs veya f ayni
T=1/f;
tmin=0;
tmax=5*T;
%sampling ratio
dt=T/100;
dt1=1/50000;
dt2=1/3000;
t=tmin:dt:tmax;
t1=tmin:dt1:tmax;
t2=tmin:dt2:tmax;
x=sin(2*pi*f*t);
x1=sin(2*pi*f*t1);
x2=sin(2*pi*f*t2);
subplot(211)
plot(t,x,'r');
hold on
stem(t1,x1);
subplot(212)
plot(t,x,'r');
hold on
stem(t2,x2);

%% sine and cosine hyperbolic function
N=50;
x=linspace(-4*pi,4*pi,N);
f=(exp(x)-exp(-x))/2; %sine hyperbolic function
g=(exp(x)+exp(-x))/2; %cosine hyperbolic function
plot(x,f,'--g*','LineWidth',2,'Color','b') %sine function
hold on
plot(x,g,'--bs','LineWidth',2,'Color','r') %cosine function
xlabel('Time')
ylabel('sinh(x) and cosh(x) Functions')
title('Hyperbolic Trigonometric Functions Plotting');
legend('sinh(x)','cosh(x)')

%% atomic structure example
clc;
clear all;
close all;
N=20;
n=0:1:N-1;
y=(3/5).^(n);
stem(n,y,'Linewidth',2,'Color','b');
ylabel('amplitude');
xlabel('number of samples --->');
xlim=[0 20];
ylim=[-1 3];
grid on
title('h[n] grafigi')