function y =sq123( m )
%开方函数
%m为待开方数
err=10^-6;
Yn=m;
Yn1=0.5*(Yn+m/Yn);

while abs(Yn1-Yn)>= err;
    Yn=Yn1;
    Yn1=0.5*(Yn+m/Yn);
end
y=Yn1;
