clear
data=load('normalfault.txt') ;
plot(data(:,1),data(:,2),'o') 
labels=num2str(data(:,3),2) ;
hold on 
text(data(:,1)+1,data(:,2),labels);
hold off
x=420:1:470;
y=70:1:120 ;
[x1,y1]=meshgrid(x,y) ;
z1=griddata(data(:,1),data(:,2),data(:,3),x1,y1,'v4') ;
contour(x1,y1,z1,10);
v=-30:5:25 ;
contourf(x1,y1,z1,v);colorbar; 
hold on 
plot(data(:,1),data(:,2),'ko') 
text(data(:,1)+1,data(:,2),labels) 
hold off