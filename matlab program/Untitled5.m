x=logspace(0,6,7);
y=energy(x);
figure;
subplot(1,3,1);
semilogy(x,y);title('semilogy');
subplot(1,3,2);
semilogx(x,y);title('semilogx');
subplot(1,3,3);
loglog(x,y);title('loglog');