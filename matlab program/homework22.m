% 1
N=0:200;
L=[16 32 64];
S1=N/L(1).*power((1-1/L(1)),N-1);
S2=N/L(2).*power((1-1/L(2)),N-1);
S3=N/L(3).*power((1-1/L(3)),N-1);
plot(N,S1,N,S2,N,S3);
xlabel('待识别电子标签数量');
ylabel('吞吐量');
legend('L=16','L=32','L=64');


% 2
figure
N=0:100;
S=N./(N+log2(factorial(N)));
plot(N,S);
xlabel('待识别电子标签数量');
ylabel('吞吐量');

% 3(1)
figure
subplot(2,2,1);
z=0:0.1:6*pi;
x=cos(z);y=sin(z);
plot3(x,y,z);
title('三维曲线');
subplot(2,2,2);
plot3(x,y,z),view(0,90);
title('俯视图');
subplot(2,2,3);
plot3(x,y,z),view(90,0);
title('左侧视图');
subplot(2,2,4);
plot3(x,y,z),view(0,0);
title('前视图');

%3(2)
figure
subplot(2,2,1);
x=-4:0.2:4;
y=x;
 [X,Y]=meshgrid(x,y);
Z=X.^2/9+Y.^2/9;
mesh(X,Y,Z);
title('椭圆抛物面网线图')
subplot(2,2,2);
surf(X,Y,Z);
title('椭圆抛物面网面图')
subplot(2,2,3);
x=-7.5:0.5:7.5;
y=x;
[X,Y]=meshgrid(x,y);
R=sqrt(X.^2+Y.^2)+eps; 
Z=sin(R)./R;
mesh(X,Y,Z);
title('阔边帽面网线图')
subplot(2,2,4);
surf(X,Y,Z);
title('阔边帽面网面图')

% 3-练习
figure
x=-2:0.1:2;
y=-2:0.1:2;
[X,Y]=meshgrid(x,y);
Z=X.^2.*exp(-(X.^2+Y.^2));
surf(X,Y,Z);

% 4
x=imread('tu.jpg');
figure 
subplot(1,2,1);
imshow(x);
subplot(1,2,2);
y=255-x;
imshow(y);
imwrite(y,'reverse.jpg');






