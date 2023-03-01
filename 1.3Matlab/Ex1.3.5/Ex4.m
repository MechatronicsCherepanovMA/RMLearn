%N1.1(1)
close all
x = rand(1,8);
tspan = [0 6];
y0 = rand(1,8);
[t,x] = ode45(@(t,x) ef3(t,x),tspan,y0);
figure
plot(t,x)

%N1.2(2)
[t,x] = ode45(@(t,x) ef4(t,x),tspan,y0);
figure
plot(t,x)

%N2(3)
x = -1.2:0.1:4;
y = frr(x);
figure
plot(x,y)
r = fsolve('frr(x)',[-1.1 -0.3 0.3 3])
r1 = fzero('frr(x)',[-1.1 3])
%N3(4)
r2 = fminbnd('frr(x)',-1,3)
r2 = fminbnd('-frr(x)',-1,3)
%N4(5)
dx = 0.1;
x = -10:dx:10;
y = frr(x);
v = diff(y)/dx;
z = gradient(y)/dx;
c = 4.4 * x .^ 3 - 8.4 * x .^ 2 - 6.8 * x +1.1;
v2 = diff(y,2)/dx ^ 2;
z2 = gradient(y,2)/dx ^ 2;%Неожиданый результат
c2 = 13.2 * x .^ 2 - 16.8 * x - 6.8;
figure
plot(x(1:length(x)-1),v,x,c,x,z,x(1:length(x)-2),v2,x,c2,x,z2)
figure
plot(x(1:length(x)-1),v,x,c,x,z)
figure
plot(x(1:length(x)-2),v2,x,c2,x,z2)


