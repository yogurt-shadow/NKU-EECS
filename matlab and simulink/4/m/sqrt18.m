function y=sqrt18(m)
y=1
if abs((y+m/y)/2-y)>10^(-6)
    y=(y+m/y)/2
end
y