%throwBall.m
function distance=throwBall(v,theta)
h=1.5; %meters 
g=9.8; %gravitational acceleration in m/s^2 
t=linspace(0,10,1000); 
x=v*cos(theta./180*pi).*t;
y=h+v*sin(theta./180.*pi).*t-1/2*g*t.^2; 
ind=find(y<0,1,'first'); 
if isempty(ind)
    distance=NaN;
    disp('The ball does not hit the ground in 10 seconds')
else
distance=x(ind); 
disp(['The ball hits the ground at a distance of ' num2str(distance) ' meters']); 
end
