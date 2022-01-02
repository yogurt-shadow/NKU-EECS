aviobj = avifile('mymovie.avi','fps',1); %“ª√Î“ª÷°
x = -pi:pi/30:pi;
h = plot(x,cos(x),'o','MarkerEdgeColor','k','MarkerFaceColor','r','MarkerSize',8,'EraseMode','background')
for j = 1:10
       y = sin(3*x+0.006*j);
       set(h,'ydata',y);
       drawnow;
       frame = getframe(gca);
       aviobj = addframe(aviobj,frame);
       pause(0.2);     
end
aviobj = close(aviobj);
