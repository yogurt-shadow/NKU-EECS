x=linspace(-0.74547,-0.74538,300);
y=linspace(0.11298,0.11304,300);
[X Y]=meshgrid(x,y);
n_iter=200;
c=0;a=2;
W=mandelbrot(X,Y,c,a,n_iter);
pcolor(X,Y,W),shading flat;
axis('square');
colormap prism(256);