%calculatepi.m
r=1;
n=10000;
m=0;
x=rand(1,10000)*2-1;
y=rand(1,10000)*2-1;
for i=1:n
    if x(i)^2+y(i)^2<=r^2;
        m=m+1;
    end
end
pai=m/n*4