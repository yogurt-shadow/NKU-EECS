%9 Optional:Julia Set Animation
function juliaAnimation(zMax,c,N)
temp=linspace(-zMax,zMax,500);
[R,I]=meshgrid(temp,temp);
z=R+1i*I;
M=N*ones(size(z));
for n=1:N
    z=z.^2+c;
    index=find(abs(z)>2);
    M(index)=n;
    z(index)=nan;
    imagesc(temp,temp,atan(0.1*M));
    axis xy;
    drawnow;
end