clc
clear
%disp('hello world')

x=input('����������x=');
[m,n] =size(x);                %�ж��������Ĵ�С
if~((m==1)|(n==1))| ((m==1)& (n==1))    	
                                           %�ж������Ƿ�Ϊ����
    	error('��������������')
end
average=sum(x)/length(x) 
