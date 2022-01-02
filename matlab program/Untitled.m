a=2;
U=2;
m=0.511*10^6;
h=1973;
E=0:0.01:2;
D0=16.*E.*(U-E)./U.^2;
D=D0.*exp(-2*sqrt(2*m*(U-E))*a/h);
plot(E,D);
xlabel('E(eV)');
ylabel('D');
str={['a=0.2 nm'];['U=2.0 eV']};
text(0.2,0.7,str,'color','r','fontsize',20)