clc
clear
close all
%N2
%Очень условно расчитано.До этого подобного не делал.Думаю интересный
%достаточно вариант реализации фунции.
%Скрипт производит расчёт времяни выдвежения пневмоцелиндра с задаными
%пораметрами,выводит  график скорости выдвижения для задоного диапозана
%дросилирования в процентах.
mfr = 60;% максимально возможный расход воздуха через систему.
lp = 20;%длина поршневой полости пневмоцилндра
pd = 20; %диаметр поршня.
n = 1:5;%колиество пневмоцелиндров
sfr = 1:100;
t1 = fpccetf7(mfr,pd,lp,n(1),sfr);
t2 = fpccetf7(mfr,pd,lp,n(2),sfr);
t3 = fpccetf7(mfr,pd,lp,n(3),sfr);
t4 = fpccetf7(mfr,pd,lp,n(4),sfr);
t5 = fpccetf7(mfr,pd,lp,n(5),sfr);
%Переберать все пременные не стал,по сути знаний мне это не
%прибавит.Получится не болие чем coppypast.
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
mfr = 60;% максимально возможный расход воздуха через систему.
lp = 20;%длина поршневой полости пневмоцилндра
pd = 20; %диаметр поршня.
n = 1:5;%колиество пневмоцелиндров
sfr = 1:100;
d = 6;%проходное сечение патрубков после дроселя
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
ax.FontSize = 18;%размер шрифта для подписей
xlabel_handle = xlabel('sfr(%)');%подпись по оси абсцисс в формате latex
xlabel_handle.Interpreter = 'latex';%указываем, что мы хотим использовать формат latex
ylabel_handle = ylabel('t(m)');%подпись по оси ординат в формате latex
ylabel_handle.Interpreter = 'latex';%указываем, что мы хотим использовать формат latex
zlabel_handle = zlabel('v(m/s)');%подпись по оси ординат в формате latex
zlabel_handle.Interpreter = 'latex';%указываем, что мы хотим использовать формат latex
title('Graph for pnivmatic sistem ', 'FontName', 'Times New Roman', 'Interpreter', 'latex', 'FontSize', 18);
saveas(fg1,"1testpdf.pdf");
saveas(fg1,"1testpng.png");
saveas(fg2,"2testpng.png");
saveas(fg3,"3testpng.png");
saveas(fg4,"4testpng.png");
saveas(fg5,"5testpng.png");
saveas(fg6,"6testpng.png");
saveas(fg6,"6testpdf.pdf");

