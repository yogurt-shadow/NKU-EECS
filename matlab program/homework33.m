%��ϰ��ҵ
%1.	�����¶���ʽ���̶���ʽ����������ʽ
P1=conv([1 0 1],conv([1 3],[1 1]));
P2=[1 1 0 1];
[q,r]=deconv(P1,P2)

%2. �����ʽ�ĸ��������乹�����ʽ
Q=[1 -4 12 -4 6];
Qr=roots(Q)
QQ=poly(Qr)

%3.y=sin(x), 0<=x<=2pi,��n���ڵ�(n��Ҫ̫����ȡ5��11)���÷ֶ����Ժ�����������ֵ����
%����m����ֵ��(m ��ȡ50��100)�ĺ���ֵ��ͨ����ֵ��ͼ�������
%�����ֲ�ֵ����뾫��ֵ���бȽϡ��ʵ�����n�������Ƚϡ�

%n=5;
suptitle('����Ƚ�');
subplot(2,2,1);
n=5;
m=80;
x=linspace(0,2*pi,n);
y=sin(x);
t=linspace(0,2*pi,m);
yt=sin(t);
y1=interp1(x,y,t,'linear');
y2=interp1(x,y,t,'spline');
detay11=y1-yt;
detay21=y2-yt;
plot(x,y,':o',t,y1,'-r',t,y2,'-b');
title('n=5');
legend('ԭʼ����','�ֶ�����','����������ֵ');

%n=10
n=10;
subplot(2,2,2);
x=linspace(0,2*pi,n);
y=sin(x);
t=linspace(0,2*pi,m);
y1=interp1(x,y,t,'linear');
y2=interp1(x,y,t,'spline');
detay12=y1-yt;
detay22=y2-yt;
plot(x,y,':o',t,y1,'-r',t,y2,'-b');
title('n=10');
legend('ԭʼ����','�ֶ�����','����������ֵ');

%n=15
n=15;
subplot(2,2,3);
x=linspace(0,2*pi,n);
y=sin(x);
t=linspace(0,2*pi,m);
y1=interp1(x,y,t,'linear');
y2=interp1(x,y,t,'spline');
detay13=y1-yt;
detay23=y2-yt;
plot(x,y,':o',t,y1,'-r',t,y2,'-b');
title('n=15');
legend('ԭʼ����','�ֶ�����','����������ֵ');

%n=20
n=20;
subplot(2,2,4);
x=linspace(0,2*pi,n);
y=sin(x);
t=linspace(0,2*pi,m);
y1=interp1(x,y,t,'linear');
y2=interp1(x,y,t,'spline');
detay14=y1-yt;
detay24=y2-yt;
plot(x,y,':o',t,y1,'-r',t,y2,'-b');
title('n=20');
legend('ԭʼ����','�ֶ�����','����������ֵ');

%���ȱȽ�
figure;
suptitle('���ȱȽ�');
subplot(2,2,1);
title('n=5');
plot(t,detay11,'-r',t,detay21,'-b');
legend('�ֶ�����','����������ֵ');
subplot(2,2,2);
title('n=10');
plot(t,detay12,'-r',t,detay22,'-b');
legend('�ֶ�����','����������ֵ');
subplot(2,2,3);
title('n=15');
plot(t,detay13,'-r',t,detay23,'-b');
legend('�ֶ�����','����������ֵ');
subplot(2,2,4);
title('n=20');
plot(t,detay14,'-r',t,detay24,'-b');
legend('�ֶ�����','����������ֵ');


%4.�ֱ��þ��η������η�������ɭ���Ϳƴ�4�ַ��������Ƽ��㶨����,����4λ��Ч����
%���η�
x=linspace(0,1,100);
y=5*x./(x.^2+4);
w=cumsum(y)*1/(100-1);
y1=w(100)

%���η�
y2=trapz(x,y)

%����ɭ���ַ�
y3=quad('5*x./(x.^2+4)',0,1)

%�ƴĻ��ַ�
y4=quadl('5*x./(x.^2+4)',0,1)


%5.����������[-5,5]�ϵ���Сֵ�����ֵ�㣬��������ͼ��
x=-5:0.1:5;
y=4*x.^3+5*x.^2+6;
[xmin,fmin]=fminbnd('4*x^3+5*x^2+6',-5,5)
[xmax,fm]=fminbnd('-4*x^3-5*x^2-6',-5,5);
xmax
fmax=-fm
figure;
plot(x,y);
title('y=4x^{3}+5x^{2}+6');

%6.������ػ��� 
fun=inline('x*sin(y)+y*cos(x)');
S=dblquad(fun,0,pi,pi,2*pi)


%7.�ֱ���LU��QR�ֽⷨ������Է�����

%LU��
A=[1 3 -2 1;2 -3 0 2;0 4 2 -3;2 3 -2 -1];
B=[7;5;9;2];
[L,U]=lu(A);
x1=U\(L\B)

%QR��
[Q,R]=qr(A);
x2=R\(Q\B)


%8.�����¼����������
%(1)
syms z
f1=(z+4)/2^z;
I1=symsum(f1,z,1,30)

%(2)
f2=2/(3*z*(z+5));
I2=symsum(f2,z,1,inf)


%9.���ö��������񡪿�������ode23������������г�ֵ����
[x,y]=ode23('fun9',[0:0.1:1.2],1)
figure;
plot(x,y);
title('dy/dx=-2xy  y(0)=1');

%������ҵ
%1����������ʽ��p1=x^4+2x^3+4x^2+5,
% p2=x+2,p3=x^2+2x+3,�������в���

%(1)��p=p1+p2+p3
P1=[1 2 4 0 5];
P2=[0 0 0 1 2];
P3=[0 0  1 2 3];
P=P1+P2+P3

%(2)��p=0�ĸ�
x=roots(P)

%2.��΢�ַ���
%5dy+y=1��y(0)=2����ֵ��
[x,y]=ode23('fun10',[0:0.1:10],2)
figure;
plot(x,y);
title('5dy+y=1��y(0)=2');

%3.�����¼����������(���8���ظ�)
%(1)
syms z
f1=(z+4)/2^z;
I1=symsum(f1,z,1,30)

%(2)
f2=2/(3*z*(z+5));
I2=symsum(f2,z,1,inf)

%4.�����к�����ָ����������ֵ
%(1)f(x)=(1+x^2)/(1+x^4)    x=[0,2]
[x1,y1]=fminbnd('-(1+x^2)/(1+x^4)',0,2);
x1
y1max=-y1

%(2)f(x)=sin(x)+cos(x^2)      x=[0,pi]
[x2 y2]=fminbnd('-(sin(x)+cos(x^2))',0,pi);
x2
y2max=-y2

%5.�ֱ���LU��QR�ֽⷨ������Է�����(���7���ظ�)

%LU��
A=[1 3 -2 1;2 -3 0 2;0 4 2 -3;2 3 -2 -1];
B=[7;5;9;2];
[L,U]=lu(A);
x1=U\(L\B)

%QR��
[Q,R]=qr(A);
x2=R\(Q\B)





