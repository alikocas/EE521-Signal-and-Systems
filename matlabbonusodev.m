
%%Question 1.
%a)
Fs = 1000;
T = 1/Fs;
L = 150;
t = (0:L-1)*T;
x = 2*sin(100*pi*t) + 2*cos(200*pi*t) + 4*sin(400*pi*t);
figure,plot(t,x);

%B)
Y = fft(x);
P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = Fs*(0:(L/2))/L;
figure,plot(f,P1) 


f = Fs*(-1/2:L/2)/L;
figure, plot(f,P1)
title('Double-Sided Amplitude Spectrum of X(t)')
xlabel('f (Hz)')
ylabel('|P1(f)|')

%%%Question 2.
Fs = 1000;
Fn = Fs/2;                                              % Nyquist Frequency (Hz)
Wp = 149.8/Fn;                                            % Passband Frequency (Normalised)
Ws = 150/Fn;                                           % Stopband Frequency (Normalised)
Rp =   1;                                               % Passband Ripple (dB)
Rs =  50;                                               % Stopband Ripple (dB)
[n,Ws] = cheb1ord(Wp,Ws,Rp,Rs);                         % Filter Order
[z,p,k] = cheby1(n,Rs,Ws,'low');                        % Filter Design
[soslp,glp] = zp2sos(z,p,k);                            % Convert To Second-Order-Section For Stability
figure()
freqz(soslp, 2^16, Fs)
 

%%%Question 3.
Fs = 1000;
Fn = Fs/2;                                              % Nyquist Frequency (Hz)
Wp = 149.8/Fn;                                            % Passband Frequency (Normalised)
Ws = 150/Fn;                                           % Stopband Frequency (Normalised)
Rp =   1;                                               % Passband Ripple (dB)
Rs =  50;                                               % Stopband Ripple (dB)
[n,Ws] = cheb1ord(Wp,Ws,Rp,Rs);                         % Filter Order
[z,p,k] = cheby1(n,Rs,Ws,'low');                        % Filter Design
[soslp,glp] = zp2sos(z,p,k);                            % Convert To Second-Order-Section For Stability
figure()
freqz(soslp, 2^16, Fs)
 
t = -10:0.1:10;
 
x = sqrt(75)*sin(40*pi*t);
filtered_signal = filter([soslp,glp],x);
figure, plot(t,filtered_signal);


%%Question4
function Hd = hhp
 
Fstop = 195;   % Stopband Frequency
Fpass = 200;   % Passband Frequency
Astop = 60;    % Stopband Attenuation (dB)
Apass = 1;     % Passband Ripple (dB)
Fs    = 1000;  % Sampling Frequency
 
h = fdesign.highpass('fst,fp,ast,ap', Fstop, Fpass, Astop, Apass, Fs);
 
Hd = design(h, 'equiripple', ...
    'MinOrder', 'any', ...
    'StopbandShape', 'flat');
 
fs = 1e3;
t = 0:1/fs:1;
x = [1 2]*sin(2*pi*[100 300]'.*t) + randn(size(t))/5;
filtered_signal = filter(Hd,x);


%%Question5
t = -2:0.1:2;
x = 4*(ones(1,41));
figure, plot(t,x);
y = fft(x);
fs = 10;
n = length(x);          % number of samples
f = (0:n-1)*(fs/n);     % frequency range
power = abs(y).^2/n;    % power of the DFT
 
plot(f,power)
xlabel('Frequency')
ylabel('Power')
 
   



