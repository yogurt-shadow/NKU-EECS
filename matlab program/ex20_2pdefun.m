function [c,f,s]=ex20_2pdefun(x,t,u,dudx)
c=[1;1];
f=[0.024*dudx(1);0.170*dudx(2)];
y=u(1)-u(2);
F=exp(5.73*y)-exp(-11.46*y);
s=[-F;F];