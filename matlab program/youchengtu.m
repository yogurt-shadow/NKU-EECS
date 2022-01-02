x=0:0.1:2*pi;
y=sin(x);
z=randn(50,1);
for i=1:length(z)
    plot(i,z(i),'*')
    hold on
end