function sqrt1(m)
format long
y1=1;y2=0;
while abs(y1-y2)>=10^(-6)
    y=y2;
    y2=0.5*(y1+m/y1);
    y1=y;
end
y2
