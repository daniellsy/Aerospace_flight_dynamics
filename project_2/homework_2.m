clear;
clc
%计算第一阶段运动方程
A=35;
m=8000;
dm=28.57;
P=200000;
g=-9.8;
theta(1)=pi/2;
x(1)=0;
y(1)=0;
v(1)=0;
t(1)=0;dt=0.01;i=1;
while t(i)<10
alpha=0;
m=m-dm*dt;
theta(i+1)=theta(i);
v(i+1)=v(i)+(P/m+g*sin(theta(i)))*dt;
x(i+1)=v(i)*cos(theta(i))*dt+x(i);
y(i+1)=v(i)*sin(theta(i))*dt+y(i);
t(i+1)=t(i)+dt;
i=i+1;
end
alpha(i)=0;
while t(i)<150
alpha(i+1)=A*(faipr(t(i))-theta(i));
m=m-dm*dt;
theta(i+1)=theta(i)+(P*alpha(i)/m+g*cos(theta(i)))/v(i)*dt;
v(i+1)=v(i)+(P/m+g*sin(theta(i)))*dt;
x(i+1)=v(i)*cos(theta(i))*dt+x(i);
y(i+1)=v(i)*sin(theta(i))*dt+y(i);
t(i+1)=t(i)+dt;
i=i+1;
end
theta=180*theta/pi;
plot(x,y,'Linewidth',2)
figure(2);plot(t,v);
figure(3);plot(t,theta);
figure(4);plot(t,alpha,'LineWidth',1.2);
xlabel('t/s');ylabel('alpha/rad');title('alpha-t图');