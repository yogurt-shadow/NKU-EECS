function plotSin(f1,f2)
x=linspace(0,2*pi,ceil(f1*16)+1);
if nargin==1
    figure;
    subplot(2,1,1)
    plot(x,sin(f1*x),'rs--','LineWidth',2,'MarkerFaceColor','k'); 
elseif nargin==2
    subplot(2,1,2)
end