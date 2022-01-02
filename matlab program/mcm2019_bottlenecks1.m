%mcm2019_bottlenecks1.m

for x=0:0.6:36
    plot([x,x],[0,18],'k');
    hold on
end
for y=0:0.6:18
    plot([0,36],[y,y],'k');
    hold on
end
xlim([0,36]);
ylim([0,18]);
fill([6,30,30,6],[4.2,4.2,18-4.2,18-4.2],'b');
n=10*30;
for i=0:9
    for j=0:29
fill([0+0.6*i,0.6+0.6*i,0.6+0.6*i,0+0.6*i],[0+0.6*j,0+0.6*j,18+0.6*j,18+0.6*j],'g');
    end
end
plot([0,6],[9,4.2],'r','LineWidth',1);
hold on
plot([0,6],[9,18-4.2],'r','LineWidth',1);
fill([0,6,6],[9,18-4.2,4.2],'y');
fill([30,36,30],[4.2,9,18-4.2],'r');
text(6,4.2,'B');
text(0,4.2,'A');
text(6,0,'C');
text(0,0,'D');
text(6,18,'F');
text(0,18,'E');
text(6,18-4.2,'G');
text(0,18-4.2,'H');
text(0,9,'K');

