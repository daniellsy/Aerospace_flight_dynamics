function angle=faipr(t)
fig=pi/60;
T1=10;
T2=130;
T3=150;
angle=pi/2*(t>=0&t<T1)+((pi/2-fig)*(((t-T1)/(T2-T1)).^2-2*(t-T1)/(T2-T1))+pi/2).*(t>=T1&t<T2)+fig*(t>=T2&t<=T3);
end


