%hw3que5.m
function dydt=hw3que5(t,y)
C=1;
Gk=36;
GNa=120;
GL=0.3;
Ek=-72;
ENa=55;
EL=-49.4;
dydt=zeros(4,1);
dydt(1)=(1-y(1)).*alphan(y(4))-y(1).*betan(y(4));
dydt(2)=(1-y(2)).*alpham(y(4))-y(2).*betam(y(4));
dydt(3)=(1-y(3)).*alphah(y(4))-y(3).*betah(y(4));
dydt(4)=-1/C*(Gk*y(1).^4*(y(4)-Ek)+GNa*y(2).^3.*y(3).*(y(4)-ENa)+GL*(y(4)-EL));
