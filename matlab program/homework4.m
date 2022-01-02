%homework4
%1. Random variables
vector=5*randn(500,1)+2;
meanofvector=mean(vector)
stdofvector=std(vector)
%3. Histogram.	
a=poissrnd(5,[1000,1]);
x=0:max(a);
[counts,centers]=hist(a,x);
sumcounts=sum(counts);
counts=counts./sumcounts;
bar(centers,counts,'b');
hold on
y=poisspdf(centers,5);
plot(centers,y,'r');
xlabel('Value');
ylabel('Probability');
title('Poisson distribution and observed histogram');
legend('Experimental histogram','Actual Poisson Distribution');
%4. Practice with cells
c={'Joe','Smith',30000;'Sarah','Brown',150000;'Pat','Jackson',120000};
disp(c);
 c(2,2)={'Meyers'};
 disp(c);
 c(3,3)={170000};
 disp(c);