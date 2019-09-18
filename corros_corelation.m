clear all;
x=[2,-1,3,7,1,2,-3];
y=[1,-1,2,-2,4,1,-2,5];
y=fliplr(y);
L1=length(x);
L2=length(y);
m=L1+L2-1;
z=zeros(1,m);
xn=[x,zeros(1,L2-1)];
yn=[y,zeros(1,L1-1)];

for i=1:m
  for j=1:i
    z(i)=z(i)+xn(j)*yn(i-j+1);
  end
  end
z
t=-1:(m-2);

stem(t,z,'r');