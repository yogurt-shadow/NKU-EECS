%ill.m
function y=ill(t,x)
i=x(1);
s=x(2);
a=1;b=0.3;
y=zeros(2,1);
didt=a*s*i-b*i;
dsdt=-a*s*i;
y(1)=didt;
y(2)=dsdt;