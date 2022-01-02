%twoLinePlot.m
%8. Optional: Plotting multiple lines and colors.
figure
t=0:0.1:2*pi;
y1=sin(t);
y2=cos(t);
pic1=plot(t,y1,'b')
hold on
plot(t,y2,'r--')
xlabel('Time(s)')
ylabel('Function wave')
title('Sin and Cos functions')
legend('sin','cos')
xlim([0,2*pi])
ylim([-1.4,1.4])