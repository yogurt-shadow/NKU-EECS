z=rand(50,1);
for i=2:length(z)
    plot(z(i-1),z(i),'+');
    hold on
end