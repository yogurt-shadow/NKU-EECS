%��ȡʱ�亯��
function y=nkutime(m)
n=nkudecode(m);%����
a=[0 0 1];%�����������
b=[0 1 0];
c=[0 1 1];
d=[1 0 0];
e=[1 0 1];
time=[10 8 20 4 8 ; 4 10 6 12 5 ; 22 13 4 10 8 ; 2 16 25 8 2 ; 6 8 13 11 16 ];%����time����
t=zeros(5,1);%��ʼ���ӹ�ʱ�����
for i=1:5%����ÿ���������
    if n(i,:)==a%�жϼӹ��������������
        t(i)=time(1,i);%��ֵ
    end
    if n(i,:)==b%ͬ��
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
    y=t;%���ؼӹ�ʱ�����