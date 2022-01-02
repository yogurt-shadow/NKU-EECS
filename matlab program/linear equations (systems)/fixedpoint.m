%fixedpoint.m
%用于求解非线性方程x=g(x)
function [k,p,absoluteerror,P]=fixedpoint(g,p0,tolerance,maximumiterations)
P(1)=p0;
for k=2:maximumiterations
    P(k)=feval(g,P(k-1));
    absoluteerror=abs(P(k)-P(k-1));
    relativeerror=absoluteerror/(abs(P(k))+eps);
    p=P(k);
    if (absoluteerror<tolerance)|(relativeerror<tolerance)
        break
    end
end
if k==maximumiterations
    disp('maximum number of iterations exceeded');
end
P=P';