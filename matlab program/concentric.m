%concentric.m
figure;
center=[0,0];
for r=1:5
[x,y]=getCircle(center,r);
plot(x,y,'LineWidth',7-r)
hold on
end
colormap(jet);
axis square;