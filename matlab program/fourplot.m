x=normrnd(5,2,50,1);
for i=1:length(x)
    subplot(2,2,1);
    plot(i,x(i),'+');
    hold on
end
for i=2:length(x)
    subplot(2,2,2);
    plot(x(i-1),x(i),'+');
    hold on
end
subplot(2,2,3);
hist(x);
subplot(2,2,4);
normplot(x);