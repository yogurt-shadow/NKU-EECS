%����Ⱦɫ��
function y=nkugenerate1
a=[0 0 1];b=[0 1 0];c=[0 1 1];d=[1 0 0];e=[1 0 1];%�����������
matrix=zeros(5,3);%��ʼ��Ⱦɫ��
for j=1:3000%�����ҵ�������Դ��Լ��Ⱦɫ��
for i=1:5%��5�����򹹳�
        p=rand;%��ʼ�ж����ɻ���
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
n=nkucode(matrix);%����
   if nkuresource(n)%�ж��Ƿ������Դ��Լ
       y=n;%������ֱ�����ɣ�������ѭ��
   break   %�������������������һ��Ⱦɫ��
   end
end