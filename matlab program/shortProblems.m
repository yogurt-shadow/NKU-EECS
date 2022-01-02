%shortProblems.m
%1.Scalar variables
a=10
b=2.5*10^23
c=2+3i
d=exp(2j*pi/3)
%2.Vector variables
aVec=[3.14 15 9 26]
bVec=[2.71;8;28;182]
cVec=5:0.2:-5
dVec=logspace(0,1,101)
eVec=('Hello')
%3.Matrix variables
aMat=2*ones(9)
v=[1 2 3 4 5 4 3 2 1];
bMat=zeros(9)+diag(v)
A=1:100;
cMat=reshape(A,[10,10])
dMat=nan(3,4)
eMat=[13,-1,5;-22,10,-87]
fMat=3*rand(5,3)
%4.Scalar equations
x=1/(a+exp(-(1-15)/6))
y=(nthroot(a,2)+nthroot(b,21))^pi
z=log(real((c+d)*(c-d))*sin(a*pi/3))/(c*conj(c))
%5.Vector equations
xVec=1/sqrt(2*pi*2.5^2)*exp(-cVec.^2/(2*2.5^2))
yVec=sqrt((aVec.').^2+bVec.^2)
zVec=log10(dVec.^(-1))
%6.Matrix equations
xMat=(aVec*bVec)*aMat^2
yMat=bVec*aVec
zMat=det(cMat)*transpose(aMat*bMat)
%7.Common functions and indexing
cSum=sum(cMat)
eMean=mean(eMat,2)
eMat(1,:)=[1,1,1];
eMat
cSub=cMat([2:9],[2:9])
lin=1:20;
lin(1,[2:2:20])=-lin(1,[2:2:20]);
lin
r=rand(1,5)
[ss1,ss2]=find(r<0.5);
r(ss1,ss2)=0;
r






























