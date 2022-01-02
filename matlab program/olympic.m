%olympic.m
bluecenter=[-1,0];
[x1,y1]=getCircle(bluecenter,0.4);
plot(x1,y1,'b','LineWidth',4);
hold on
blackcenter=[0,0];
[x2,y2]=getCircle(blackcenter,0.4);
plot(x2,y2,'k','LineWidth',4);
hold on
redcenter=[1,0];
[x3,y3]=getCircle(redcenter,0.4);
plot(x3,y3,'r','LineWidth',4);
hold on
yellowcenter=[-0.5,-0.5];
[x4,y4]=getCircle(yellowcenter,0.4);
plot(x4,y4,'y','LineWidth',4);
hold on
greencenter=[0.5,-0.5];
[x5,y5]=getCircle(greencenter,0.4);
plot(x5,y5,'g','LineWidth',4);
xlim([-1.5,1.5]);
ylim([-1.4,0.9]);