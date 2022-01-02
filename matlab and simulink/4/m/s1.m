function s = s( l)
l = 30:1:135;
sigma = zeros(106);
s=zeros(106);
for j=1:106
    for i=2:90
        sigma(j) = sigma(j) + 3*(i-1)*nchoosek(90,i)*(1/l(j)).^i*(1-1/l(j)).^(90-i);
    end;
    s(j) =  90/(1+l(j)+l(j)*sigma(j));
end;
