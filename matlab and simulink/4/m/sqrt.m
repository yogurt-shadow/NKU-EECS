function sqrt=sqrt(m)
y=1;
while abs(0.5*(m/y-y))>10e-6
    y=0.5*(y+m/y);
end
sqrt=y;
end

