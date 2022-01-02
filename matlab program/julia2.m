function W=julia2(X,Y,c,n_iter)
Z=X+i*Y;
for k=1:n_iter
    Z=Z.^2+c;
end
W=exp(-abs(Z));