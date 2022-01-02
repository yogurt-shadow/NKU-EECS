n=2;

L=linspace(30,135,20);

I=ones(1,20);

s=I+L;

N=90;

while n<=N

    s=s+((1./L).^(n))*3*(n-1)*nchoosek(N,n).*((1-1./L).^(N-n));

    n=n+1;    

end

S=N./s;

