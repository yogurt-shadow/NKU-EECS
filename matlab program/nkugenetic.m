%nku NO.3 遗传算法
m=10;%种群数量
diedai=500;%迭代次数
pc=0.1;%交叉概率
pm=0.1;%变异概率
a=[0 0 1];b=[0 1 0];c=[0 1 1];d=[1 0 0];e=[1 0 1];%定义基因
n=zeros(m,15);%n是种群
t=100*ones(size(n,1),1);
lu=zeros(diedai,1);%最长时间矩阵
ll=zeros(diedai,1);%最短时间矩阵
mm=zeros(diedai,1);%平均时间矩阵
celue=zeros(100,15);%最短时间对应的组件生产方案
kk=1;%kk-1为目前已知不重复最短时间策略数目
for ii=1:diedai%开始迭代
for j=1:m      %开始生成种群
n(j,:)=nkugenerate1;%nkugenerate1函数可生成符合资源制约的染色体
end
for i=2:m         %交叉操作
    for j=1:i-1   %从前面的染色体中寻找交叉对象
        if rand<pc     %判断能否进行交叉
            app=zeros(5,3);%初始化新的染色体
            app1=nkudecode(n(i,:));%解码
            app2=nkudecode(n(j,:));%解码
            q=rand;              %开始判断交叉发生的位置
            if q<0.25
                posi=1;
            else
                if q<0.5
                    posi=2;
                else
                    if q<0.75
                        posi=3;
                    else
                            posi=4;
                    end
                end
            end
            app(1:posi,:)=app1(1:posi,:);  %进行交叉
            app(posi+1:5,:)=app2(posi+1:5,:);
            new=nkucode(app);        %对新产生的染色体编码
            if nkuresource(new)        %检验新的染色体是否符合资源制约
            n=[n;new];               %将能符合资源制约的新染色体加入种群之中
            end
        end
    end
end
for i=1:m %变异操作
    if rand<pm        %判断能否发生变异
        app=nkudecode(n(i,:));%解码
        temp1=app;         %保存此染色体
        q=rand; 
     if q<0.2           %开始判断变异发生的位置
                posi=1;
            else
                if q<0.4
                    posi=2;
                else
                    if q<0.6
                        posi=3;
                    else
                        if q<0.8
                            posi=4;
                        else
                            posi=5;
                        end
                    end
                end
     end
     h=rand;               %开始判断变异之后的基因类型
     if h<0.2
         app(posi,:)=a;
     else
         if h<0.4
             app(posi,:)=b;
         else
             if h<0.6
                 app(posi,:)=c;
             else
                 if h<0.8
                     app(posi,:)=d;
                 else
                     app(posi,:)=e;
                 end
             end
         end
     end
    end
    ss=1-nkuresource(app);       %对是否符合资源制约取反
    if ss
        app=temp1;                %若不能符合资源制约，归还之前保留的染色体
    end 
end        
for i=1:size(n,1)
    t(i)=nkuadapt(n(i,:));%t存储每个染色体的适应度
end
t=sort(t);%排序
ll(ii)=min(t);%存储最短时间
lu(ii)=max(t);%存储最长时间
mm(ii)=mean(t);%存储平均时间
limit=t(m);%选择淘汰阈值
index=zeros(1,30);%初始化淘汰染色体序号的存储矩阵
for i=1:size(n,1)
    if nkuadapt(n(i,:))>limit %判断染色体时间与淘汰时间长短
        index(i)=i;            %存储被淘汰的染色体序号
    end
end
i=1;              
temp=ones(m,15);
for j=1:size(n,1)
    if nkujudge(index,j)    %判断该染色体是否在淘汰列表当中
        temp(i,:)=n(j,:);   %temp为临时种群，由不被淘汰的个体构成
        i=i+1;              %腾出存储空间
    end
end
n=temp;                     %将临时种群作为下次筛选的正式种群
for jn=1:size(n,1)          %开始存储最短时间的策略
    if nkuadapt(n(jn,:))==28  %已知最短时间为28，判断是否为最短时间
        if nkujudge2(celue,n(jn,:))   %判断该个体是否与策略矩阵内的个体重复
            celue(kk,:)=n(jn,:);      %存储策略
            kk=kk+1;                  %腾出存储空间
        end
    end
end
end
sumcelue=sum(celue,2);               %以下为删除策略矩阵中由于初始化而全为0的行，采用加和处理
ling=min(find(sumcelue==0));         %ling为策略矩阵中第一个全为0的行对应的序号
zz=celue(1:ling-1,:);                %zz为筛选后的策略矩阵
plot(ll,'r-');                       %画出每一次的最短时间
hold on                     
plot(mm,'b:');                       %画出每一次的平均时间 
hold on
plot(lu,'g:.');                      %画出每一次的最长时间
legend('最短时间','平均时间','最长时间'); %分别加上图解
title('组件生产时间进化');            %题目
ylabel('生产最短时间');               %y坐标意义
xlabel('迭代次数');                   %x坐标意义
ylim([15,70]);                        %y轴范围
zz                                %输出最后的策略矩阵