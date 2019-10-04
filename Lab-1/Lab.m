 %% Question-2 DT unit impulse
clc;
N=15;
n=-N:1:N;
y=[zeros(1,N), ones(1,1), zeros(1,N)];
stem(n,y,'LineWidth', 2, 'Color', 'b');
ylabel('amplitude');
xlabel('number of samples---->');
title('discrete unit impulse signal');
disp(y);
%% Question-2 DT unit step
N=20;
n=0:1:N-1;
y=ones(1,N);
stem(n,y,'LineWidth',2,'Color','b');
ylabel('amplitude');
xlabel('number of samples--->>');
title('discrete3 unit step signal');
disp(y);