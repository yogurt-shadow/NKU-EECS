function smoothed=rectFilt2(x,width)
smoothed=zeros(1,length(x));
deta=width;
for n=1:length(x)
    if n<deta+1
        smoothed(n)=mean(x(n:n+deta));
    elseif n>length(x)-deta
        smoothed(n)=mean(x(n-deta:n));
    else
    smoothed(n)=mean(x(n-deta:n+deta));
    end
end