% average_1.m ��������Ԫ�ص�ƽ��ֵ
x=input('����������x=');
[m,n] =size(x);                        %�ж��������Ĵ�С
if~((m==1)|(n==1))| ((m==1)& (n==1))    	%�ж������Ƿ�Ϊ����
    	error('��������������')
end
keyboard
average=sum(x)/length(x) 