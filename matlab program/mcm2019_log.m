%mcm2019_log.m
a=plot([0,25],[16.3324,16.3324],'b');
set(a,'LineWidth',2);
hold on
t=25:1:350;
y=100./(1+23.1316*exp(-0.0603.*t));
z=plot(t,y);
set(z,'LineWidth',2);
xlabel('time');
ylabel('f');
