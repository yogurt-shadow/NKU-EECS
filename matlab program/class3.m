total=load('preexam.txt');
B=zeros(40,5);
for i=1:5
    B(:,i)=[total(:,i);total(:,i+5)];
end
x1=B(:,1);
y=pdist(B);
squareform(y);
Z=linkage(y);
dendrogram(Z)
dendrogram(Z,'colorthreshold','default')
figure
c=cophenet(Z,y)
sApProMax=max(x1);
sApProMin=min(x1);
meanS=mean(x1);
x=linspace(sApProMin,sApProMax,20000+1);
yy=hist(x1,x);  %计算各个区间的个数
yy=yy/length(x); %计算各个区间的比例
bar(x,yy)

