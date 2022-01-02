function Result = ThreePoint2Circle(P1, P2, P3)
%% 求圆心和半径
x1 = P1(1);    x2 = P2(1);    x3 = P3(1);
y1 = P1(2);    y2 = P2(2);    y3 = P3(2);
z1 = x2^2 + y2^2 - x1^2 - y1^2;
z2 = x3^2 + y3^2 - x1^2 - y1^2;
z3 = x3^2 + y3^2 - x2^2 - y2^2;
A = [(x2-x1), (y2-y1); (x3-x1), (y3-y1); (x3-x2), (y3-y2)];
B = 0.5*[z1;  z2;  z3];
P0 = (A'*A)\A'*B;
R1 = sqrt( (P0(1) - P1(1))^2 + (P0(2) - P1(2))^2 );
R2 = sqrt( (P0(1) - P2(1))^2 + (P0(2) - P2(2))^2 );
R3 = sqrt( (P0(1) - P3(1))^2 + (P0(2) - P3(2))^2 );
R = (R1 + R2 + R3)/3;
%% 绘制圆
theta = (0:pi/360:2*pi)';
Result = zeros(size(theta,1),4);
for i = 1: size(theta,1)
    Result(i,1) = i;
    Result(i,2) = theta(i);
    Result(i,3) = P0(1) + R*cos(theta(i));
    Result(i,4) = P0(2) + R*sin(theta(i));
end
plot(Result(:,3),Result(:,4),'b-');hold on;
grid on; xlabel('x');ylabel('y'); axis equal;
end