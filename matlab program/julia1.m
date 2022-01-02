function w=julia1(X,Y,c,n_iter,a)
Z=X+i*Y;
w=zeros(size(X));
for k=1:n_iter
    Z=Z.^2+c;
    i0=find(abs(Z)>a);
    w(i0)=k;
    Z(i0)=NaN;
end
i0=find(w==0);
w(i0)=NaN;
