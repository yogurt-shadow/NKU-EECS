function yn=Sqrt17(m)

%函数Sqrt（m）用于计算数m的平方根；

%输入参数m为带计算的数；

yn=m;

yn1=m+1;

while abs(yn-yn1)>=1e-5

    yn=yn1;

    yn1=(yn+m/yn);

end

yn=yn1;

