close all;clear;clc
%N1
%N1.1
%��� ��������� ���������� ��������� ���������� ������  ������� �������� ����� �������  � a � "1" � b.
%��� ��������� ���������� ��������� ���������� ������  �������� �������� 
%� ����� � a � ����� ��������  � b.��� ����� ������������� �������� ��� ������� ��� ������� 0 �������
%���������� ��������.��� ����� �������������� ������� ��� �������� ��������� ������ 0. 
p = 1;
k = 1;
k = k + 1;

g = fplangrav(p,k);%��� ��������� �������� ��� �������

%N1.2
m = 1000;
g = 1;
r = 6378100;
w = 1.995 * 10 ^ -7;
a = [-40;30;20;10];%������ ����� ������ ����������
N = fcp(m,g,r,w,a);

%N1.3 ��� ����� %������ ����� �� ��������� �����.
m = 100;
g = 9.81;
r = 6371000;
w = 1.995 * 10 ^ -7;
a = -40;%������ ����� ������ ����������
N = fcp(m,g,r,w,a)%��������� ��� ����������� �������.

%N2%������ �����,������ ����� �����������
t = 6;
x = rand(1,4);
%1 - x;2 - v; 3 - f;4 - w;5 - z,6 - a,7 - b,8 - c.
%N2.1
dxdt = ef1(t,x);
dx = dxdt(1)
% %N2.2
dxdt = ef2(t,x);
dx = dxdt(1)
dy = dxdt(2)
% %N2.3
a = 1;
b = 1;
c = 1;
w = 1;
f = 1;
dxdt = ef3(t,x,a,b,w,f,c);
dx = dxdt(1)
dy = dxdt(2)
% %N2.4
dxdt = ef4(t,x,a,c);
dz = dxdt(1)
df = dxdt(2)
dw = dxdt(3)
dv = dxdt(4)



