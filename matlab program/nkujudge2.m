%�жϾ���n�����������Ƿ���m��û�з���1
function y=nkujudge2(n,m)
ll=size(n,1);
y=1;
for i=1:ll
    if n(i,:)==m
        y=0;
        break
    end
end