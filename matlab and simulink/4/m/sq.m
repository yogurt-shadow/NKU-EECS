 function z=sq(m)

err=1e-6;

Yn=m;

Yn1=1/2*(Yn+m/Yn);

while abs(Yn-Yn1) > err

Yn=Yn1;

Yn1=1/2*(Yn+m/Yn);
end
 z=Yn;

