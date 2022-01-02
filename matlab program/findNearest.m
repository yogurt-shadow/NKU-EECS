%findNearest.m
function ind=findNearest(x,desiredVal)
temp=x-desiredVal*ones(size(x));%creat a matrix that contains elements from x and subtract desiredVal
temp=abs(temp);%use absolute value to find the nearest point
temp0=temp(:);
temp1=min(temp0);%return the minimum value
ind=find(temp==temp1);%return the indice which gets the minimum value