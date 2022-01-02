%判断矩阵n的行向量中是否有m，没有返回1
function y=nkujudge2(n,m)
ll=size(n,1);
y=1;
for i=1:ll
    if n(i,:)==m
        y=0;
        break
    end
end