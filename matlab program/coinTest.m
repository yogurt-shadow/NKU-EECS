%coinTest.m
%2. Flipping a coin
x=rand(1,5000);
y=round(x);
n=1:5000;
z=cumsum(y)./n;
plot(n,z,'k');
hold on
plot([1,5000],[0.5,0.5],'r');
xlabel('Number of coin flips');
ylabel('Probability of heads');
title('Sample Probability of Heads in n flips of a simulated coin');
legend('Sample Probability ','Fair coin');
