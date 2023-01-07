clf;clc;clear all;
%Локон
fi=pi/3 : -0.01 : -pi/3;
hold on
for a=[2 5 10 15]
    x=a*tan(fi);
    y=a*cos(fi).^2;
    plot(x,y)
end
grid on
axis equal

fi=pi/3 : -0.01 : -pi/3;
a = 15
x=a*tan(fi);
y=a*cos(fi).^2;
figure
plot(x,y)
axis equal