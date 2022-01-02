%secapeVelocity.m
function n=escapeVelocity(z0,c,N)
z=zeros(1,N+1);
z(1)=z0;
if abs(z0)>2
    n=0;
    return
end
for k=1:N
    z(k+1)=z(k).^2+c;
    if abs(z(k+1))>2
        n=k;
        return 
    end
end
n=N;