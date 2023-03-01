close all
%Улитка Паскаля
t = 1:600;
t = t*pi/180;
R = 50;
h = 100;
x = (2*R).* cos(t)-h.* cos(2*t);
y = (2*R).* sin(t)-h.* sin(2*t);
plot(y,x)
axis equal tight
title('Улитка Паскаля');

%Фигуры Лиссажу
A = 100;
B = 100;
a = 3;
b = 2;
t = 1:1000000;
f = 10;
a = a*pi/180;
b = b*pi/180;
t = t*pi/180;
f = f*pi/180;
x = A.*sin(a*t+f);
y = B.*sin(b*t);
figure
plot(x,y)
axis equal tight
title('Фигуры Лиссажу');

%трохойда
r = 40;
h = 55;
t = 1:1000;
t = t*pi/180;
x = r*t - h*sin(t);
y = r - h * cos(t);
figure
plot(x,y)
axis equal tight
title('Трохойда');

%Гипоциклойда
R = 6;
r = 1;
k = R/r;
t = 1:10000;
t = t*pi/180;
x = r*(k - 1)*(cos(t)+cos((k-1)*t)/(k-1));
y = r*(k - 1)*(sin(t)- sin((k-1)*t)/(k-1));
figure
plot(x,y)
axis equal tight
title('Гипоциклойда');

%Гипотрохиойда
R = 6;
r = 1;
f = 1:1000;
f = f *pi/180;
h= 10;
x = (R-r)*cos(f)+h*cos((R-r)/r*f);
y = (R-r)*sin(f)+h*sin((R-r)/r*f);
figure
plot(x,y)
axis equal tight
title('Гипотрохиойда');

%Эпициклойда
R = 6;
r = 1;
f = 1:360;
f = f *pi/180;
a = 10;
x = (R+r)*cos(f)-r*cos(a+(R+r)/r*f);
y = (R+r)*sin(f)-r*sin(a+(R+r)/r*f);
figure
plot(x,y)
axis equal tight
title('Эпициклойда');

%Гипотрохиойда
R = 6;
r = 1;
f = 1:1000;
f = f *pi/180;
h= 10;
x = (R-r)*cos(f)+h*cos((R-r)/r*f);
y = (R-r)*sin(f)+h*sin((R-r)/r*f);
figure
plot(x,y)
axis equal tight
title('Гипотрохиойда');

%Эпициклойда
R = 6;
r = 1;
f = 1:360;
f = f *pi/180;
a = 10;
x = (R+r)*cos(f)-r*cos(a+(R+r)/r*f);
y = (R+r)*sin(f)-r*sin(a+(R+r)/r*f);
figure
plot(x,y)
axis equal tight
title('Эпициклойда');

%Задача 3 
%сходные данные
k1 = 10;
k2 = -2;
k3 = -5;
T1 = 10;
T2 = 6;
T3 = 8;

%Уравнения
%Этап 1
dt = 0:T1;
V1 = k1*dt;
%Этап 2
dt = 1:T2;
V2 = k1*T1 + k2*dt.^2;
%Этап 3
dt = 1:T3;
V3 = k1*T1 + k2*T2.^2 + k3*dt;
%Общий график
dt = 0 : T1 + T2 + T3;
v = [V1 V2 V3];
figure
plot(dt,v)
axis equal tight
title('График задачи')
















