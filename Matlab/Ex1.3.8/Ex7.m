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
t1 = fpccetf7(mfr,pd,lp,n(1),sfr);
t2 = fpccetf7(mfr,pd,lp,n(2),sfr);
t3 = fpccetf7(mfr,pd,lp,n(3),sfr);
t4 = fpccetf7(mfr,pd,lp,n(4),sfr);
t5 = fpccetf7(mfr,pd,lp,n(5),sfr);
%���������� ��� ��������� �� ����,�� ���� ������ ��� ��� ��
%��������.��������� �� ����� ��� coppypast.
fid = fopen("1testfile",'w');
wsfr = fwrite(fid,sfr,'double');
wt1 = fwrite(fid,t1,'double');
fclose(fid);

fid = fopen("1testfile","r");
[SFR,wsfr] = fread(fid,[1,wsfr],'double');
[T1,wt1] = fread(fid,[1,wt1],'double');
fclose(fid);

fg1 = plot(T1,SFR,'-');
hold on;
fg1 = plot(t2,SFR,'--');
fg1 = plot(t3,SFR,'.');
fg1 = plot(t4,SFR,'.-');
fg1 = plot(t5,SFR,':');
grid on;
hold off;

fg2= figure
loglog(T1,SFR,':');

fg3 = figure
stairs(T1,SFR);

fg4 = figure
bar(T1,SFR);

fg5 = figure
area(T1,SFR);

%N3
mfr = 60;% ����������� ��������� ������ ������� ����� �������.
lp = 20;%����� ��������� ������� �������������
pd = 20; %������� ������.
n = 1:5;%��������� ���������������
sfr = 1:100;
d = 6;%��������� ������� ��������� ����� �������
t = fpccetf7(mfr,pd,lp,n(1),sfr);
v = fvd7(mfr,sfr,d);

fg6 = figure;
plot3(sfr,t,v);

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
saveas(fg1,"1testpdf.pdf");
saveas(fg1,"1testpng.png");
saveas(fg2,"2testpng.png");
saveas(fg3,"3testpng.png");
saveas(fg4,"4testpng.png");
saveas(fg5,"5testpng.png");
saveas(fg6,"6testpng.png");
saveas(fg6,"6testpdf.pdf");

