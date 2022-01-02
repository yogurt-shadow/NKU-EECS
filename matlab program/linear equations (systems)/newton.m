function [res,it]=newton(func,dfunc,x,precis)
%x0 is the initial value,precis is the required accuracy
%func is the function of f and dfunc is its derivative
%used to solve f(x)=0
it=0;
x0=x;
d=feval(func,x0)/feval(dfunc,x0);
while abs(d)>precis
    x1=x0-d;
    it=it+1;
    x0=x1;
    d=feval(func,x0)/feval(dfunc,x0);
end
res=x0;