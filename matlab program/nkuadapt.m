%��Ӧ�Ⱥ���
function t=nkuadapt(m)%mΪ������
time=nkutime(m);%����ÿ������ļӹ�����ʱ��
relatime=zeros(5,5);%��ʼ��ÿ�������ǰ��ʱ��
linemax=zeros(5,1);%��ʼ��ÿ�������ͬ��ʱ��
relamax=zeros(5,1);%��ʼ�����ǰ��ʱ��
linetime=zeros(5,5);%��ʼ�����ͬ��ʱ��
n=nkudecode(m);%����
begin=ones(5,1);%��ʼ��ÿ������Ŀ�ʼʱ��
a=[0 0 1];%�����������
b=[0 1 0];
c=[0 1 1];
d=[1 0 0];
e=[1 0 1];
begin(1)=0;%���1���������ӹ�
product1=n(1,:);%product1Ϊ�������1��������
ra=[1 2;3 4;2 5;4 5];raa=ra(:,2);%ra�ڶ���Ϊ������A����Ҫǰ��������������raa������һ��Ϊ��Ӧ��ǰ�����
rb=[1 2;2 3;2 4;3 5;4 5];rbb=rb(:,2);%ͬ��
rc=[1 2;1 3;2 4;3 4;4 5];rcc=rc(:,2);
rd=[1 2;2 4;3 4;4 5];rdd=rd(:,2);
re=[1 3;2 4;3 5;4 5];ree=re(:,2);
for i=2:5                %�������2��5����
    if n(i,:)~=product1 %���������i��i����1���������߲��������1
        if ((n(i,:)==a)&(nkujudge(raa,i)))|((n(i,:)==b)& ...
            (nkujudge(rbb,i)))|((n(i,:)==c)&(nkujudge(rcc,i)))|((n(i,:)==d)& ...
        (nkujudge(rdd,i)))|((n(i,:)==e)&(nkujudge(ree,i)))%�ж����i�Ƿ���ǰ��������ϵ
            if nkujudge(begin(2:i),0)%�ж����i�Ƿ���ͬ�߶��Ӻ�ʼʱ��
                begin(i)=0;%û�������������ж����i���������ӹ�
            end
        end
    end
end
h=find(begin==1);%hΪǰ����ɸѡ��ʣ�µ����
h=h';
for i=1:length(h)
    producti=n(h(i),:);%productiΪ�������h(i)��������
 if (producti==a)&(find(raa==h(i)))%����Ϊ�ж����h��i)�Ƿ���ǰ��������ϵ
     index=find(raa==h(i));        %��ȡ���
     rela=ra(index,1);             %ͨ�����������������ǰ�����
     relatime(h(i),1)=max(begin(rela)+time(rela));%ǰ��ʱ��Ϊǰ��������깤ʱ��
 else
     if  (producti==b)&(find(rbb==h(i)))          %ͬ��
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
  for j=1:h(i)-1  %ͬһ�������ͺ�����
      if n(j,:)==producti       %�ж��Ƿ����ͬ������
          linetime(h(i),j)=begin(j)+time(j);%ͬ��ʱ��Ϊǰһ��ͬ��������깤ʱ��
      end
  end
  linemax(h(i))=max(linetime(h(i),:));  %�漰�����ͬ�������ȡ���ֵ
  relamax(h(i))=max(relatime(h(i),:));  %�漰�����ǰ�������ȡ���ֵ
  begin(h(i))=max(linemax(h(i)),relamax(h(i)));%���h��i���Ŀ�ʼʱ��Ϊͬ��ʱ���ǰ��ʱ������ֵ
end
totaltime=begin+time;  %�깤ʱ��Ϊ��ʼʱ����ϼӹ�ʱ��
t=max(totaltime);      %�����깤ʱ�伴Ϊ�������ʱ�䣬����Ӧ��