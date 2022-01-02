%used to solve x1=g1(x1,x2,...),x2=g2(x1,x2,...),...
%Systems of Non-Linear Equations 
%a generalization of the fixed point iterative method for single equations. 
function [p,it]=seidel(G,P,tolerance,maximumiterations)
N=length(P);
for k=1:maximumiterations
X=P;
for j=1:N
    A=feval('G',x);
    X(j)=A(j);
end
absoluteerror=abs(norm(X-P));
relativeerror=absoluteerror/(norm(X)+eps);
p=X;
it=k;
if (absoluteerror<tolerance)|(relativeerror<tolerance)
    break
end
end
