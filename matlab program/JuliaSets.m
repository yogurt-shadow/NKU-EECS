%6. Julia Sets.m
M=julia(1, -.297491+i*0.641051,100); 
B=atan(0.1*M);
x=linspace(-0.35,0.35,500);
imagesc(x,x,atan(.1*M)); axis xy 
xlabel('Re(z)'); ylabel('Im(z)'); 