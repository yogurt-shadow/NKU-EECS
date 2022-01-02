%mcm2019_freedemo.m
for x=0:0.6:72
    plot([x,x],[0,36],'k');
    hold on
end
for y=0:0.6:36
    plot([0,72],[y,y],'k');
    hold on
end
xlim([0,72]);
ylim([0,36]);