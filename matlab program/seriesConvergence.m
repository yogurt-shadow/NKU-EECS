
%p^k series sum
p=2;
n=1:500;
pSeries=(n.^p).^(-1);
x=1:max(n);
plot([0,max(n)],[pi^2/6,pi^2/6],'r')
hold on
plot(x,cumsum(pSeries),'b')
xlabel('Index');
ylabel('Sum');
title('Convergence of p-series with p=2')
legend('Infinite sum','Finite sum')