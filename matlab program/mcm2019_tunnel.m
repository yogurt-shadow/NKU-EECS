%mcm2019_tunnel.m
x=linspace(0,0.3*45,46);
y=linspace(0,0.3*45,46);
I=meshgrid(x,y);
plot(x,I,'k');
hold on
plot(I,y,'k');
xlim([0,13.5]);
ylim([0,13.5]);
for s=0:20
    for h=-2:9
    fill([3+0.6*h,3.3+0.6*h,3.3+0.6*h,3+0.6*h],[0.9+0.6*s,0.9+0.6*s,1.2+0.6*s,1.2+0.6*s],'g');
    end
end
for i=1:21
    fill([6,12,12,6],[0.6*i+0.3,0.6*i+0.3,0.6*i+0.3+0.3,0.6*i+0.3+0.3],'b');
end
for j=0:20
    for m=0:19
    fill([5.7+0.3*j,6+0.3*j,6+0.3*j,5.7+0.3*j],[1.2+0.6*m,1.2+0.6*m,1.5+0.6*m,1.5+0.6*m],'w');
    fill([6+0.3*j,6.3+0.3*j,6.3+0.3*j,6+0.3*j],[1.2+0.6*m,1.2+0.6*m,1.5+0.6*m,1.5+0.6*m],'g');
    for l=0:9
       if j>=2*(l+1)
        if mod(j,2)==0
        fill([5.7+0.6*l,6+0.6*l,6+0.6*l,5.7+0.6*l],[1.2+0.6*m,1.2+0.6*m,1.5+0.6*m,1.5+0.6*m],'w');
        fill([6+0.6*l,6.3+0.6*l,6.3+0.6*l,6+0.6*l],[1.2+0.6*m,1.2+0.6*m,1.5+0.6*m,1.5+0.6*m],'g');
        end
       end
    end
    for l=0:8
        if j>=2*(l+1)
        if mod(j,2)==1
        fill([6+0.6*l,6.3+0.6*l,6.3+0.6*l,6+0.6*l],[1.2+0.6*m,1.2+0.6*m,1.5+0.6*m,1.5+0.6*m],'w');
        fill([6.3+0.6*l,6.6+0.6*l,6.6+0.6*l,6.3+0.6*l],[1.2+0.6*m,1.2+0.6*m,1.5+0.6*m,1.5+0.6*m],'g');
        end
        end
       end
       end
       pause(0.3);
end
