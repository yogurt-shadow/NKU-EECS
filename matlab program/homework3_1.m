%homework3_1.m
%1. Linear system of equations
A=[3,6,4;1,5,0;0,7,7];
b=[1;2;3];
solve=A\b
%2. Numerical integration
x=0:0.1:5;
trapzanswer=trapz(x,x.*exp(-x./3))
quadanswer=quad('hw3que2',0,5)
anaanswer=-24*exp(-5/3)+9;
diff1=abs(trapzanswer-anaanswer)
diff2=abs(quadanswer-anaanswer)
%3. Computing the inverse
B=[1 2;3 4];
inverseB=inv(B)
multi=inverseB*B