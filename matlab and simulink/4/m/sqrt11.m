function y=sqrt(m)
e=10^(-6); %�������
y0=1; %��ʼ��
y1=0.5*(y0+m/y0);
while abs(y0-y1)>e
y0=y1;
y1=0.5*(y0+m/y0);
end
y=y0;
