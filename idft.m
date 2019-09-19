clc;
clear all;
close all;
X = [1 -1 3 -2];

N=4;
y=zeros(4,1);
for k = 0:N-1
    for n = 0:N-1
        y(k+1) = y(k+1) + X(n+1)*exp(j*2*pi*n*k/N);
    end
end
for j=0:N-1
  y(j+1)= (1/N)*y(j+1);
end;
disp(y);

t=0:N-1
subplot(211)
stem(t,y);
xlabel('Frequency');
ylabel('x(k)');
title('Frequency domain - retrive signal response')