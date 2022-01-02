%适应度函数
function t=nkuadapt(m)%m为基因型
time=nkutime(m);%调出每个组件的加工所需时间
relatime=zeros(5,5);%初始化每个组件的前驱时间
linemax=zeros(5,1);%初始化每个组件的同线时间
relamax=zeros(5,1);%初始化最大前驱时间
linetime=zeros(5,5);%初始化最大同线时间
n=nkudecode(m);%解码
begin=ones(5,1);%初始化每个组件的开始时间
a=[0 0 1];%定义基本基因
b=[0 1 0];
c=[0 1 1];
d=[1 0 0];
e=[1 0 1];
begin(1)=0;%组件1可以立即加工
product1=n(1,:);%product1为生产组件1的生产线
ra=[1 2;3 4;2 5;4 5];raa=ra(:,2);%ra第二列为生产线A上需要前驱组件的组件（即raa），第一列为对应的前驱组件
rb=[1 2;2 3;2 4;3 5;4 5];rbb=rb(:,2);%同上
rc=[1 2;1 3;2 4;3 4;4 5];rcc=rc(:,2);
rd=[1 2;2 4;3 4;4 5];rdd=rd(:,2);
re=[1 3;2 4;3 5;4 5];ree=re(:,2);
for i=2:5                %对于组件2到5而言
    if n(i,:)~=product1 %即生产组件i（i大于1）的生产线不生产组件1
        if ((n(i,:)==a)&(nkujudge(raa,i)))|((n(i,:)==b)& ...
            (nkujudge(rbb,i)))|((n(i,:)==c)&(nkujudge(rcc,i)))|((n(i,:)==d)& ...
        (nkujudge(rdd,i)))|((n(i,:)==e)&(nkujudge(ree,i)))%判断组件i是否有前驱依赖关系
            if nkujudge(begin(2:i),0)%判断组件i是否因同线而延后开始时间
                begin(i)=0;%没有以上条件，判定组件i可以立即加工
            end
        end
    end
end
h=find(begin==1);%h为前两次筛选后剩下的组件
h=h';
for i=1:length(h)
    producti=n(h(i),:);%producti为生产组件h(i)的生产线
 if (producti==a)&(find(raa==h(i)))%以下为判断组件h（i)是否有前驱依赖关系
     index=find(raa==h(i));        %提取序号
     rela=ra(index,1);             %通过序号搜索所依赖的前驱组件
     relatime(h(i),1)=max(begin(rela)+time(rela));%前驱时间为前驱组件的完工时间
 else
     if  (producti==b)&(find(rbb==h(i)))          %同上
     index=find(rbb==h(i));
     rela=rb(index,1);
     relatime(h(i),2)=max(begin(rela)+time(rela));
     else
         if (producti==c)&(find(rcc==h(i)))
     index=find(rcc==h(i));
     rela=rc(index,1);
     relatime(h(i),3)=max(begin(rela)+time(rela));
         else
             if (producti==d)&(find(rdd==h(i)))
     index=find(rdd==h(i));
     rela=rd(index,1);
     relatime(h(i),4)=max(begin(rela)+time(rela));
             else
                 if (producti==e)&(find(ree==h(i)))
     index=find(ree==h(i));
     rela=re(index,1);
     relatime(h(i),5)=max(begin(rela)+time(rela));
             end
         end
     end
     end
 end
  for j=1:h(i)-1  %同一生产线滞后问题
      if n(j,:)==producti       %判断是否存在同线问题
          linetime(h(i),j)=begin(j)+time(j);%同线时间为前一个同线组件的完工时间
      end
  end
  linemax(h(i))=max(linetime(h(i),:));  %涉及到多个同线组件，取最大值
  relamax(h(i))=max(relatime(h(i),:));  %涉及到多个前驱组件，取最大值
  begin(h(i))=max(linemax(h(i)),relamax(h(i)));%组件h（i）的开始时间为同线时间和前驱时间的最大值
end
totaltime=begin+time;  %完工时间为开始时间加上加工时间
t=max(totaltime);      %最大的完工时间即为最短生产时间，即适应度