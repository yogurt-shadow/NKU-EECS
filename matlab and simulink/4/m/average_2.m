function y=average_2(x)
% 函数average_2(x)用以计算向量元素的平均值。
% 输入参数x为输入向量，输出参数y为计算的平均值。
% 非向量输入将导致错误。
[m,n]=size(x);							 %判断输入量的大小
if~((m==1)|(n==1))| ((m==1)& (n==1))    
    %判断输入是否为向量
    	error('必须输入向量。')
end

y=sum(x)/length(x);  %计算向量x所含元素的均值
disp(y)

