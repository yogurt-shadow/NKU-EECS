a=0;
b=10;
n=1000;
r1=unifrnd(a,b,n,1);
r2=unifrnd(a,b,n,1);
z0=inf;
sol=zeros(1,2);
for i=1:n
    x=r1(i);
    y=r2(i);
    x=[x y];
    lp=lpconst(x);
    if lp==1
        z=mylp(x);
        if z<z0
            z0=z;
            sol=x;
        end
    end
end
z0
sol