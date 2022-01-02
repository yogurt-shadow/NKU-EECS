%练习作业
%1.	求以下多项式的商多项式和余数多项式
P1=conv([1 0 1],conv([1 3],[1 1]));
P2=[1 1 0 1];
[q,r]=deconv(P1,P2)

%2. 求多项式的根并利用其构造多项式
Q=[1 -4 12 -4 6];
Qr=roots(Q)
QQ=poly(Qr)

%3.y=sin(x), 0<=x<=2pi,在n个节点(n不要太大，如取5～11)上用分段线性和三次样条插值方法
%计算m个插值点(m 可取50～100)的函数值。通过数值和图形输出，
%将两种插值结果与精度值进行比较。适当增加n，再作比较。

%n=5;
suptitle('结果比较');
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
legend('原始数据','分段线性','三次样条插值');

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
legend('原始数据','分段线性','三次样条插值');

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
legend('原始数据','分段线性','三次样条插值');

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
legend('原始数据','分段线性','三次样条插值');

%精度比较
figure;
suptitle('精度比较');
subplot(2,2,1);
title('n=5');
plot(t,detay11,'-r',t,detay21,'-b');
legend('分段线性','三次样条插值');
subplot(2,2,2);
title('n=10');
plot(t,detay12,'-r',t,detay22,'-b');
legend('分段线性','三次样条插值');
subplot(2,2,3);
title('n=15');
plot(t,detay13,'-r',t,detay23,'-b');
legend('分段线性','三次样条插值');
subplot(2,2,4);
title('n=20');
plot(t,detay14,'-r',t,detay24,'-b');
legend('分段线性','三次样条插值');


%4.分别用矩形法、梯形法、辛普森法和科茨4种方法来近似计算定积分,保留4位有效数字
%矩形法
x=linspace(0,1,100);
y=5*x./(x.^2+4);
w=cumsum(y)*1/(100-1);
y1=w(100)

%梯形法
y2=trapz(x,y)

%辛普森积分法
y3=quad('5*x./(x.^2+4)',0,1)

%科茨积分法
y4=quadl('5*x./(x.^2+4)',0,1)


%5.求函数在区间[-5,5]上的最小值和最大值点，并画出其图形
x=-5:0.1:5;
y=4*x.^3+5*x.^2+6;
[xmin,fmin]=fminbnd('4*x^3+5*x^2+6',-5,5)
[xmax,fm]=fminbnd('-4*x^3-5*x^2-6',-5,5);
xmax
fmax=-fm
figure;
plot(x,y);
title('y=4x^{3}+5x^{2}+6');

%6.计算二重积分 
fun=inline('x*sin(y)+y*cos(x)');
S=dblquad(fun,0,pi,pi,2*pi)


%7.分别用LU和QR分解法求解线性方程组

%LU法
A=[1 3 -2 1;2 -3 0 2;0 4 2 -3;2 3 -2 -1];
B=[7;5;9;2];
[L,U]=lu(A);
x1=U\(L\B)

%QR法
[Q,R]=qr(A);
x2=R\(Q\B)


%8.对以下级数进行求和
%(1)
syms z
f1=(z+4)/2^z;
I1=symsum(f1,z,1,30)

%(2)
f2=2/(3*z*(z+5));
I2=symsum(f2,z,1,inf)


%9.利用二三阶龙格—库塔法（ode23）法来求解下列初值问题
[x,y]=ode23('fun9',[0:0.1:1.2],1)
figure;
plot(x,y);
title('dy/dx=-2xy  y(0)=1');

%补充作业
%1有三个多项式：p1=x^4+2x^3+4x^2+5,
% p2=x+2,p3=x^2+2x+3,进行下列操作

%(1)求p=p1+p2+p3
P1=[1 2 4 0 5];
P2=[0 0 0 1 2];
P3=[0 0  1 2 3];
P=P1+P2+P3

%(2)求p=0的根
x=roots(P)

%2.求微分方程
%5dy+y=1，y(0)=2的数值解
[x,y]=ode23('fun10',[0:0.1:10],2)
figure;
plot(x,y);
title('5dy+y=1，y(0)=2');

%3.对以下级数进行求和(与第8题重复)
%(1)
syms z
f1=(z+4)/2^z;
I1=symsum(f1,z,1,30)

%(2)
f2=2/(3*z*(z+5));
I2=symsum(f2,z,1,inf)

%4.求下列函数在指定区间的最大值
%(1)f(x)=(1+x^2)/(1+x^4)    x=[0,2]
[x1,y1]=fminbnd('-(1+x^2)/(1+x^4)',0,2);
x1
y1max=-y1

%(2)f(x)=sin(x)+cos(x^2)      x=[0,pi]
[x2 y2]=fminbnd('-(sin(x)+cos(x^2))',0,pi);
x2
y2max=-y2

%5.分别用LU和QR分解法求解线性方程组(与第7题重复)

%LU法
A=[1 3 -2 1;2 -3 0 2;0 4 2 -3;2 3 -2 -1];
B=[7;5;9;2];
[L,U]=lu(A);
x1=U\(L\B)

%QR法
[Q,R]=qr(A);
x2=R\(Q\B)





