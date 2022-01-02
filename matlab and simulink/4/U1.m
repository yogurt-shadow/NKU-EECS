clc
clear
%disp('hello world')

x=input('输入向量：x=');
[m,n] =size(x);                %判断输入量的大小
if~((m==1)|(n==1))| ((m==1)& (n==1))    	
                                           %判断输入是否为向量
    	error('必须输入向量。')
end
average=sum(x)/length(x) 
