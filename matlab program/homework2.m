%homework2.m
%1. Semilog plot.
x9=1:6;
y=[15,25,55,115,144,242];
semilogy(x9,y,'s','MarkerSize',10,'LineWidth',4)
xlabel('year');
ylabel('number of students');
title('number of students over the past 6 years');
xlim([0.5,6.5]);
%2. Subplot and axis modes.
figure;
load mitMap.mat;
    subplot(2,2,1);
    imagesc(mit);
    axis square;
    title('Square');
    subplot(2,2,2);
    imagesc(mit)
    axis tight;
    title('Tight');
    subplot(2,2,3);
    imagesc(mit)
    axis equal;
    title('Equal');
    subplot(2,2,4);
    imagesc(mit)
    axis xy;
    title('XY');
colormap(cMap);
%3. Bar graph.
figure;
vector1=rand(1,5);
vector2=1:5;
bar(vector2,vector1,'r');
%4. Interpolation and surface plots.
figure;
z0=rand(5);
[x0,y0]=meshgrid(1:5,1:5);
[x1,y1]=meshgrid(1:0.1:5,1:0.1:5);
z1=interp2(x0,y0,z0,x1,y1);
surf(z1);
colormap(hsv);
shading interp;
hold on
contour(z1,15);
colorbar;
caxis([0,1]);
%5. Fun with find.
v1=[1,2,3;4,5,6];
indice=findNearest(v1,pi) %this returns the indice counted by column
%6. Loops and flow control.
loopTest(10)
%7. Smoothing filter.
figure;
load noisyData.mat;
smoothed=rectFilt(x,5);%get width 5
plot(x,'.')
hold on
plot(smoothed,'r')
xlabel('Index');
ylabel('Data Value');
legend('Original Data','Smoothed');
title('Smoothing illustration');
