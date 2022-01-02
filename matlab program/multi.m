function y=multi(a,b)
if size(a,2)==size(b,1)
    y=a*b;
else
    y=a.*b;
end
    