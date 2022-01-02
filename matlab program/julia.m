%julia.m
function M=julia(zMax,c,N)
a=linspace(-zMax,zMax,500);
[a1,b1]=meshgrid(a,a);
z=a1+1i*b1;
M=zeros(size(z));
for i=1:500
    for j=1:500
M(i,j)=escapeVelocity(z(i,j),c,N);
    end
end
