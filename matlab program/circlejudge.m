function circlejudge(l)    %judge if there is only one circle
for i=1:length(l)
    judge=find(l(:,i)==1);
    if isempty(judge)
        break
    end
    x1=i;y1=i;
    while ~isempty(x1)||~isempty(y1) 
    x2=find(l(x1,:)==1);
    y2=find(l(:,y1)==1);   
    if x2==y1&x1==y2
        break;
    end
    l(x1,x2)=0;
    l(y2,y1)=0;
    x1=find(l(x2,:)==1);
    y1=find(l(:,y2)==1); 
    if x1==y2&x2==y1
        l(x2,x1)=0;
        break
    end
    l(x2,x1)=0;
    l(y1,y2)=0;
    end
end
if l==0
    disp('only one circle');
else
    disp('other circles');
end
    
