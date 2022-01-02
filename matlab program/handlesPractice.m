%handlesPractice.m
%6. Handles
x=0:0.1:2*pi;
y=sin(x);
figure;
plot(x,y,'r');
xlim([0,2*pi]);
A=gca;
set(A,'xtick',[0 pi 2*pi]);
set(A,'xticklabel',{'0','1','2'});
set(A,'ytick',-1:0.5:1);
grid on
set(A,'ycolor','g');
set(A,'xcolor','k');
set(A,'color',[0.3 0.3 0.3]);
title('One sine wave from 0 to 	2\pi','fontsize',14,'fontweight','bold','color','w');
xlabel('X values (in terms of \pi','fontsize',12,'color','c');
ylabel('Sin(x)','fontsize',12,'color','g');