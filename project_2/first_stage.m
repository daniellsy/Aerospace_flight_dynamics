function dy=first_stage(t,y) 
m0=8000;
dm=28.57;
g=-9.8;
P=200000;
m=m0-dm*t;
dy=zeros(4,1);
dy(1)=0;
dy(2)=P/m+g*sin(y(1));
dy(3)=y(2)*cos(y(1));
dy(4)=y(2)*sin(y(1));
end
