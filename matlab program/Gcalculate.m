function Gk=Gcalculate(lamada,N,a,b,k)
miu=1-lamada;
nanshengshu=lamada*N;
nvshengshu=miu*N;
x=1:lamada*N;
y=1:miu*N;
[x,y]=meshgrid(x,y);
z=a*x+b*y;
[xvalue,yvalue]=find(z==k);
choose=[xvalue,yvalue];
nanprice=1/(lamada*a);
nvprice=1/(miu*b);
[xuanshu,Gk]=zuixiaoshengyu(choose,nanshengshu,nvshengshu,nanprice,nvprice);