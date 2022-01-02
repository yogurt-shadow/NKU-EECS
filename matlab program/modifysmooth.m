%10.Optional:?Smoothing?nonuniformly?sampled?data.?
%modifysmooth.m
load optionalData.mat;
width=2;
y=zeros(length(x),2);
y(:,1)=x(:,1);
y(:,2)=rectFilt2(x(:,2),width);
plot(x(:,1),x(:,2),'.');
hold on
plot(y(:,1),y(:,2),'g')
xlabel('X Value');
ylabel('Y value');
title('Smoothing Illustration,nonuniform,spacing');
legend('Original Data','Smoothed');