function [a,b]=zuixiaoshengyu(z,x,y,nanprice,nvprice)
t=size(z,1);
z=z';
xy=[x;y];
juzhen=1:t;
lb=zeros(t,1);
price=[nanprice;nvprice];
target=z.*price;
target=sum(target);
[c,fval]=intlinprog(-target,juzhen,z,xy,[],[],lb,[]);
value=nanprice*x+nvprice*y+fval;
a=c;b=value;