function y=Sqrt14(m)
if m>=0
    x=[m,m+1];
    while abs(x(1)-x(2))>1e-6
        x(1)=x(2);
        x(2)=0.5*(x(1)+m/x(1));
    end
    y=x(2);
else
    disp('The number cannot be negative!')
    return;
end
