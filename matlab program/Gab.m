function Gk=Gab(lamada,N,a,b)
m=min(a,b);
n=max(a,b);
kmin=a+b;
kmax=8*n;
k=kmin:m:kmax;
qiwang=round(10*mean(k));
x=10*k;
px=poisspdf(x,qiwang);
pxsum=sum(px);
pk=px/pxsum;
for k=kmin:m:kmax
Gkm=Gcalculate(lamada,N,a,b,k);
end
chengji=pk*Gkm;
Gk=sum(chengji);