function yn=Sqrt17(m)

%����Sqrt��m�����ڼ�����m��ƽ������

%�������mΪ�����������

yn=m;

yn1=m+1;

while abs(yn-yn1)>=1e-5

    yn=yn1;

    yn1=(yn+m/yn);

end

yn=yn1;

