function y=sqrt12(m)
y=0;
e=abs((y+m/y)/2-y);
%y=(y+m/y)/2;
while e>10^-6
   e=abs((y+m/y)/2)-y;
   y=(y+m/y)/2;
end