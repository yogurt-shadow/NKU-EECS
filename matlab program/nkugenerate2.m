function y=nkugenerate2
y=ones(1,15);
for i=1:3000
s=nkugenerate1;
if nkuresource(s)
    y=s;
    break
end
end