function demo
figure
subplot 211
h=bar(ones(2,7));
axis([0.6 1.4 0 1.3])
set(gca,'color',[1 1 1]*0.9,'XTickLabel','','YTickLabel','')
h=findobj(h,'type','patch');
hatch(h(1),'hor')
hatch(h(2),'ver')
hatch(h(3),'thick')
hatch(h(4),'thicky')
hatch(h(5),'Thick')
hatch(h(6),'dense')
hatch(h(7),'Dense')

x=0.65+[0 1 2 3 4 5 6]*.11;
y=1.1*ones(size(x));
string=char({'hor', 'ver', 'thick','thicky','Thick','dense','Dense'});
text(x,y,string);

subplot 212
h=bar(ones(2,7));
axis([0.6 1.4 0 1.3])
set(gca,'color',[1 1 1]*0.9,'XTickLabel','','YTickLabel','')
h=findobj(h,'type','patch');

hatch(h(1),'fill')
hatch(h(2),'filly')
hatch(h(3),'rare')
hatch(h(4),'Rare')
hatch(h(5),'rarethick')
hatch(h(6),'cross')
hatch(h(7),'plus')
string=char({'fill','filly','rare','Rare','rarethick','cross','plus'});
text(x,y,string);