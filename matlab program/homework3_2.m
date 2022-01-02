%homework3_2.m
%4. Fitting polynomials
load('randomData.mat');
p1=polyfit(x,y,1);
p2=polyfit(x,y,2);
p3=polyfit(x,y,3);
p4=polyfit(x,y,4);
p5=polyfit(x,y,5);
plot(x,y,'k.');
hold on
plot(x,polyval(p1,x),'b');
hold on
plot(x,polyval(p2,x),'c');
hold on
plot(x,polyval(p3,x),'g');
hold on
plot(x,polyval(p4,x),'y');
hold on
plot(x,polyval(p5,x),'r');
legend('Data','Order 1','Order 2','Order 3','Order 4','Order 5');
title('Polynomials fit to noisy data');