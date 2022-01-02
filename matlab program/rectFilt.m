%rectFilt.m
function smoothed=rectFilt(x,width)
smoothed=zeros(1,length(x));
if mod(width,2)==0
    disp([num2str(width) 'is NOT odd,and we input width add 1']);
    width=width+1;
end
deta=(width-1)/2;
for n=1:length(x)
    if n<deta+1
        smoothed(n)=mean(x(n:n+deta));
    elseif n>length(x)-deta
        smoothed(n)=mean(x(n-deta:n));
    else
    smoothed(n)=mean(x(n-deta:n+deta));
    end
end
