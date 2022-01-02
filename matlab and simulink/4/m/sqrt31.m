function y=sqrt31(m)
y1 = 1;
while 1
    y2 = 0.5*(y1+m/y1);
    if abs(y2-y1)<1e-6
        return
    end
    y=y2;
end
y
end
