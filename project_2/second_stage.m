function dy=second_stage(t,y) 
m0=8000;
dm=28.57;
g=-9.8;
afai=35;
P=200000;
m=m0-dm*t;
alpha=afai*(faipr(t)-y(1));
dy=zeros(4,1);
dy(1)=(1/(m*y(2)))*P*alpha+g*cos(y(1))/y(2);
dy(2)=P/m+g*sin(y(1));
dy(3)=y(2)*cos(y(1));
dy(4)=y(2)*sin(y(1));
end
