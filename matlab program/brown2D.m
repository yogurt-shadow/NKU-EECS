%brown2D.m
%8. Animation:	Brownian motion
function brown2D(N)
x=zeros(100,1);
y=zeros(100,1);
%figure;
%xlim([-1,1]);
%ylim([-1,1]);
%axis square
%pic=plot(x,y,'.k');
for i=1:1000
    x=x+randn(size(x))*0.05;
    y=y+randn(size(y))*0.05;
   plot(x,y,'.');
   axis square
    %set(pic,'xdata',x,'ydata',y); 
    xlim([-1,1]);
    ylim([-1,1]);
    pause(0.01);
end