%HH.m
%5. Hodgkin-Huxley model of the neuron
[t,y]=ode45('hw3que5',[0,20],[0.5,0.5,0.5,-60]);
yss=y(end,:);
plot(t,y(:,4),'k');
xlabel('Time(ms)');
ylabel('Transmembrane Voltage(mV)');
title('Approaching  Steady State');
figure;
for k=1:10
    [t,y]=ode45('hw3que5',[0,20],[yss(1),yss(2),yss(3),yss(4)+k]);
if max(y(:,4))>0
    plot(t,y(:,4),'r');
else
    plot(t,y(:,4),'k');
end
hold on
end
title('Threshold Behaviour');
xlabel('Time(ms)');
ylabel('Transmembrane Voltage(mV)');