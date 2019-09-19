clc;
clear;
fs=8000;
ts=1/fs;
N=8;

 n=1:N;
x=sin(2*pi*1000*n*ts)+0.5*sin(2*pi*2000*n*ts+(3*pi/4));


for m=0:length(x)-1
  real=0;
  imaginary=0;
  for i=0:N-1
    real=real+(x(i+1)*cos((2*pi*m*i)/N));
    imaginary=imaginary+(x(i+1)*sin((2*pi*m*i)/N));
  end;
  result(m+1)=real;
  result2(m+1)=-imaginary;
end;
for iter=1:N
  magnititude(iter)=sqrt((result(iter)*result(iter))+(result2(iter)*result2(iter)));
  
end;
disp(magnititude);
t=0:N-1;
subplot(411);
stem(n,magnititude);
xlabel('Frequency');
ylabel('x(k)');
title('Frequency domain magnitude');

t=0:N-1;
subplot(412);
stem(n,result);
xlabel('Frequency');
ylabel('x(k)');
title('Frequency domain real');
t=0:N-1;
subplot(413);
stem(n,result2);
xlabel('Frequency');
ylabel('x(k)');
title('Frequency domain imaginary');