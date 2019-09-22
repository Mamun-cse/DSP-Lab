clc;
clear all;
close all;

F1=1000;
F2=2000;
Fs=8000;
N=8;
n=0:N-1
X=sin(2*pi*(F1/Fs)*n)+.5*sin(2*pi*(F2/Fs)*n+(3*pi/4));
disp(X);
subplot(411);
stem(n,X);
ylabel('|X(m)|');
title('Discreate signal');

X1=zeros(N,1);
real=zeros(N,1);
img=zeros(N,1);
ph=zeros(N,1);
pw=zeros(N,1);
for m=0:N-1
  for n=0:N-1
    real(m+1)=real(m+1)+X(n+1)*cos(2*pi*n*m/N);
    img(m+1)=img(m+1)-X(n+1)*sin(2*pi*n*m/N);
    
  endfor
  X1(m+1)=sqrt(real(m+1)^2+img(m+1)^2);
  pw(m+1)=X1(m+1)^2;
  ph(m+1)=atan(img(m+1)/real(m+1));
  
endfor
X1
disp(X1);
t=0:N-1
subplot(412);
stem(t,X1);
ylabel('|X1(m)|');
title('magnitude');

t=0:N-1
subplot(413);
stem(t,pw);
ylabel('|pw(m)|');
title('power of spectrum');

t=0:N-1
subplot(414);
stem(t,ph);
ylabel('|ph(m)|');
title('phase');


