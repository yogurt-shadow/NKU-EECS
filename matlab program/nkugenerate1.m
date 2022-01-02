%生成染色体
function y=nkugenerate1
a=[0 0 1];b=[0 1 0];c=[0 1 1];d=[1 0 0];e=[1 0 1];%定义基本基因
matrix=zeros(5,3);%初始化染色体
for j=1:3000%用于找到满足资源制约的染色体
for i=1:5%由5个基因构成
        p=rand;%开始判断生成基因
        if p<0.2
            matrix(i,:)=a;
        else
            if p<0.4
                matrix(i,:)=b;
            else
                if p<0.6
                    matrix(i,:)=c;
                else
                    if p<0.8
                        matrix(i,:)=d;
                    else
                        matrix(i,:)=e;
                    end
                end
            end
        end
end
n=nkucode(matrix);%编码
   if nkuresource(n)%判断是否符合资源制约
       y=n;%若符合直接生成，并跳出循环
   break   %若不符合则继续生成下一个染色体
   end
end