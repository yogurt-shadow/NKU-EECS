clear
clc
t0=0;
t1=-2; dt=0.001; t2=2;
t=t1:dt:t2;
n=length(t);       
x=zeros(1,n);      
k=floor((t0-t1)/dt);    %向无穷小方向取整
x(k)=1/dt;      %在第k点给出的样本值赋为1/dt，近似于无穷大的表示
stairs(t,x)
axis([-2,2,0,20]);
xlabel('时间（t）');ylabel('幅度（f）');title('单位冲击信号') 
