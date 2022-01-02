%used to solve f(x)=0
%via the iteration xr+1=xr ?mf(xr) /f'(xr) 
%similar to newton's method
function [res,it]=schroder(func,dfunc,m,x,precis)
%m is the order of multiplicity of the root
%x is the initial value,precis is the precision
it=0;x0=x;
d=feval(func,x0)/feval(dfunc,x0);
while abs(d)>precis
    x1=x0-m*d;
    it=it+1;x0=x1;
    d=feval(func,x0)/feval(dfunc,x0);
end
res=x0;