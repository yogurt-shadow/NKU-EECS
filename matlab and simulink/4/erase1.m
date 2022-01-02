x = -pi:pi/30:pi;
h = plot(x,cos(x),'o','MarkerEdgeColor','k','MarkerFaceColor','r','MarkerSize',8,'EraseMode','normal')
for j = 1:3000
       y = sin(3*x+0.006*j);
       set(h,'ydata',y);
       drawnow;
       pause(0.2);
end
