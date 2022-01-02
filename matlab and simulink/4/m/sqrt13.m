function y=sqrt13(m)

k(1)=m;

k(2)=(k(1)+(m)/(k(1)))/2;

i=1;

while abs(k(i+1)-k(i))>=1.0000e-005   

    k(i+2)=(k(i+1)+(m)/(k(i+1)))/2;   

    i=i+1;  

end

y=k(i+1)

 

