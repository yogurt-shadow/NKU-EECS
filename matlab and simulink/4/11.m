clear
clc
t0=0;
t1=-2; dt=0.001; t2=2;
t=t1:dt:t2;
n=length(t);       
x=zeros(1,n);      
k=floor((t0-t1)/dt);    %������С����ȡ��
x(k)=1/dt;      %�ڵ�k�����������ֵ��Ϊ1/dt�������������ı�ʾ
stairs(t,x)
axis([-2,2,0,20]);
xlabel('ʱ�䣨t��');ylabel('���ȣ�f��');title('��λ����ź�') 
