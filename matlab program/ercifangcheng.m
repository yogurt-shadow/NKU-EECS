function [x,y]=ercifangcheng(a,b,c)
if a==0
    disp('��������η���');
    x=0;
    y=0;
    return
else
deta=b^2-4*a*c;
x=(-b+sqrt(deta))/(2*a);
y=(-b-sqrt(deta))/(2*a);
end
