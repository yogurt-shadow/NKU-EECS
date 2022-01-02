% Systems of Non-Linear Equations 
%F1=F2=F3=...=0
function [P,it,absoluteerror]=raphson(F,JF,P,delta,epsilon,maximumiterations)
Y=feval(F,P);
for k=1:maximumiterations
    J=feval(JF,P);
    Q=P-(J\Y')';
    Z=feval(F,Q);
    absoluteerror=norm(Q-P);
    relativeerror=absoluteerror/(norm(Q)+eps);
    P=Q;
    Y=Z;
    it=k;
    if(absoluteerror<delta)|(relativeerror<delta)|(abs(Y)<epsilon)
        break
    end
end