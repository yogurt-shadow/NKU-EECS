%调取时间函数
function y=nkutime(m)
n=nkudecode(m);%解码
a=[0 0 1];%定义基本基因
b=[0 1 0];
c=[0 1 1];
d=[1 0 0];
e=[1 0 1];
time=[10 8 20 4 8 ; 4 10 6 12 5 ; 22 13 4 10 8 ; 2 16 25 8 2 ; 6 8 13 11 16 ];%输入time矩阵
t=zeros(5,1);%初始化加工时间矩阵
for i=1:5%对于每个组件而言
    if n(i,:)==a%判断加工该组件的生产线
        t(i)=time(1,i);%赋值
    end
    if n(i,:)==b%同上
        t(i)=time(2,i);
    end
    if n(i,:)==c
        t(i)=time(3,i);
    end
    if n(i,:)==d
        t(i)=time(4,i);
    end
    if n(i,:)==e
        t(i)=time(5,i);
    end
end
    y=t;%返回加工时间矩阵