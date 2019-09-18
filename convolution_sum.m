clc;
clear all;
close all;
x=[1,2,1,-1];
h=[1,2,3,1];

L1=length(x);
L2=length(h);
m=L1+L2-1;

z=zeros(1,m);
xn=[x,zeros(1,L2-1)];
xn
hn=[h,zeros(1,L1-1)];
hn

for i=1:m
  for j=1:i
    z(i)=z(i)+xn(j)*hn(i-j+1);
  endfor
endfor
z
t=-1:(m-2);

stem(t,z,'r');