%nku NO.3 �Ŵ��㷨
m=10;%��Ⱥ����
diedai=500;%��������
pc=0.1;%�������
pm=0.1;%�������
a=[0 0 1];b=[0 1 0];c=[0 1 1];d=[1 0 0];e=[1 0 1];%�������
n=zeros(m,15);%n����Ⱥ
t=100*ones(size(n,1),1);
lu=zeros(diedai,1);%�ʱ�����
ll=zeros(diedai,1);%���ʱ�����
mm=zeros(diedai,1);%ƽ��ʱ�����
celue=zeros(100,15);%���ʱ���Ӧ�������������
kk=1;%kk-1ΪĿǰ��֪���ظ����ʱ�������Ŀ
for ii=1:diedai%��ʼ����
for j=1:m      %��ʼ������Ⱥ
n(j,:)=nkugenerate1;%nkugenerate1���������ɷ�����Դ��Լ��Ⱦɫ��
end
for i=2:m         %�������
    for j=1:i-1   %��ǰ���Ⱦɫ����Ѱ�ҽ������
        if rand<pc     %�ж��ܷ���н���
            app=zeros(5,3);%��ʼ���µ�Ⱦɫ��
            app1=nkudecode(n(i,:));%����
            app2=nkudecode(n(j,:));%����
            q=rand;              %��ʼ�жϽ��淢����λ��
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
            app(1:posi,:)=app1(1:posi,:);  %���н���
            app(posi+1:5,:)=app2(posi+1:5,:);
            new=nkucode(app);        %���²�����Ⱦɫ�����
            if nkuresource(new)        %�����µ�Ⱦɫ���Ƿ������Դ��Լ
            n=[n;new];               %���ܷ�����Դ��Լ����Ⱦɫ�������Ⱥ֮��
            end
        end
    end
end
for i=1:m %�������
    if rand<pm        %�ж��ܷ�������
        app=nkudecode(n(i,:));%����
        temp1=app;         %�����Ⱦɫ��
        q=rand; 
     if q<0.2           %��ʼ�жϱ��췢����λ��
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
     h=rand;               %��ʼ�жϱ���֮��Ļ�������
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
    ss=1-nkuresource(app);       %���Ƿ������Դ��Լȡ��
    if ss
        app=temp1;                %�����ܷ�����Դ��Լ���黹֮ǰ������Ⱦɫ��
    end 
end        
for i=1:size(n,1)
    t(i)=nkuadapt(n(i,:));%t�洢ÿ��Ⱦɫ�����Ӧ��
end
t=sort(t);%����
ll(ii)=min(t);%�洢���ʱ��
lu(ii)=max(t);%�洢�ʱ��
mm(ii)=mean(t);%�洢ƽ��ʱ��
limit=t(m);%ѡ����̭��ֵ
index=zeros(1,30);%��ʼ����̭Ⱦɫ����ŵĴ洢����
for i=1:size(n,1)
    if nkuadapt(n(i,:))>limit %�ж�Ⱦɫ��ʱ������̭ʱ�䳤��
        index(i)=i;            %�洢����̭��Ⱦɫ�����
    end
end
i=1;              
temp=ones(m,15);
for j=1:size(n,1)
    if nkujudge(index,j)    %�жϸ�Ⱦɫ���Ƿ�����̭�б���
        temp(i,:)=n(j,:);   %tempΪ��ʱ��Ⱥ���ɲ�����̭�ĸ��幹��
        i=i+1;              %�ڳ��洢�ռ�
    end
end
n=temp;                     %����ʱ��Ⱥ��Ϊ�´�ɸѡ����ʽ��Ⱥ
for jn=1:size(n,1)          %��ʼ�洢���ʱ��Ĳ���
    if nkuadapt(n(jn,:))==28  %��֪���ʱ��Ϊ28���ж��Ƿ�Ϊ���ʱ��
        if nkujudge2(celue,n(jn,:))   %�жϸø����Ƿ�����Ծ����ڵĸ����ظ�
            celue(kk,:)=n(jn,:);      %�洢����
            kk=kk+1;                  %�ڳ��洢�ռ�
        end
    end
end
end
sumcelue=sum(celue,2);               %����Ϊɾ�����Ծ��������ڳ�ʼ����ȫΪ0���У����üӺʹ���
ling=min(find(sumcelue==0));         %lingΪ���Ծ����е�һ��ȫΪ0���ж�Ӧ�����
zz=celue(1:ling-1,:);                %zzΪɸѡ��Ĳ��Ծ���
plot(ll,'r-');                       %����ÿһ�ε����ʱ��
hold on                     
plot(mm,'b:');                       %����ÿһ�ε�ƽ��ʱ�� 
hold on
plot(lu,'g:.');                      %����ÿһ�ε��ʱ��
legend('���ʱ��','ƽ��ʱ��','�ʱ��'); %�ֱ����ͼ��
title('�������ʱ�����');            %��Ŀ
ylabel('�������ʱ��');               %y��������
xlabel('��������');                   %x��������
ylim([15,70]);                        %y�᷶Χ
zz                                %������Ĳ��Ծ���