%判断向量v中是否有a，如果没有则返回1
function y=nkujudge(v,a)
h=find(v==a);
if isempty(h)
    y=1;
else
    y=0;
end