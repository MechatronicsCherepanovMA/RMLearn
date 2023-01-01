clc
clear
close all
%N2
%����� ������� ���������.�� ����� ��������� �� �����.����� ����������
%���������� ������� ���������� ������.
%������ ���������� ������ ������� ���������� �������������� � ��������
%�����������,�������  ������ �������� ���������� ��� �������� ���������
%�������������� � ���������.
mfr = 60;% ����������� ��������� ������ ������� ����� �������.
lp = 20;%����� ��������� ������� �������������
pd = 20; %������� ������.
n = 1:5;%��������� ���������������
sfr = 1:100;
t1 = fpccetf(mfr,pd,lp,n(1),sfr);
t2 = fpccetf(mfr,pd,lp,n(2),sfr);
t3 = fpccetf(mfr,pd,lp,n(3),sfr);
t4 = fpccetf(mfr,pd,lp,n(4),sfr);
t5 = fpccetf(mfr,pd,lp,n(5),sfr);
plot(t1,sfr,'-');
hold on;
plot(t2,sfr,'--');
plot(t3,sfr,'.');
plot(t4,sfr,'.-');
plot(t5,sfr,':');
grid on;
hold off;

figure
loglog(t1,sfr,':');

figure
stairs(t1,sfr);

figure
bar(t1,sfr);

figure
area(t1,sfr);

%N3
mfr = 60;% ����������� ��������� ������ ������� ����� �������.
lp = 20;%����� ��������� ������� �������������
pd = 20; %������� ������.
n = 1:5;%��������� ���������������
sfr = 1:100;
d = 6;%��������� ������� ��������� ����� �������
t = fpccetf(mfr,pd,lp,n(1),sfr);
v = fvd(mfr,sfr,d);
figure
plot3(sfr,t,v)
grid on;
grid minor;
ax = gca;
ax.GridAlpha = 0.6;
ax.LineWidth = 0.5;
ax.MinorGridLineStyle = '-';
ax.MinorGridAlpha = 0.2;
ax.FontSize = 18;%������ ������ ��� ��������
xlabel_handle = xlabel('sfr(%)');%������� �� ��� ������� � ������� latex
xlabel_handle.Interpreter = 'latex';%���������, ��� �� ����� ������������ ������ latex
ylabel_handle = ylabel('t(m)');%������� �� ��� ������� � ������� latex
ylabel_handle.Interpreter = 'latex';%���������, ��� �� ����� ������������ ������ latex
zlabel_handle = zlabel('v(m/s)');%������� �� ��� ������� � ������� latex
zlabel_handle.Interpreter = 'latex';%���������, ��� �� ����� ������������ ������ latex
title('Graph for pnivmatic sistem ', 'FontName', 'Times New Roman', 'Interpreter', 'latex', 'FontSize', 18);

