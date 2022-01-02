%testBall.m
%9. Optional:? Functions.? 
v=4;
theta=0:0.1:60;
distance=zeros(60,1);
for n=1:length(theta)
    distance(n)=throwBall(v,theta(n));
end
plot(theta,distance')
xlabel('Initial Angle(deg)');
ylabel('Distance thrown(m)');
title('Distance of ball throw as a function of release angle');
