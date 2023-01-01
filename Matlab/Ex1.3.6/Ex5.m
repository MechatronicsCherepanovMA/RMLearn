%N1
clc
s = 10;
s = 10;
tic
H = zeros(s);
for c = 1:s
 for r = 1:s
 H(r,c) = 1/(r+c-1);
 end
end
toc
tic
H = hilb(s);%Я попробывал подумать,но на долго меня не хватило.Зачем выдумывать если есть готовое решение)
toc

%N3.1
%Проблемма с заданием я понимаю "точность 1у-6" как вывести 6 знаков после
%запятой,но как по мне реалезовать это не реально.Перелазил всё что можно
%нащёл алгоритм в учебнике.Сделал всё по нему.Желаемый для
%меня резултат не получил.Либо я сделал неправильно,либо я неправилно
%понмаю поставленную задачу
%задачу.
%http://nickolay.info/study/pascal/13.html.Запустил код из учебника через
%компилятор поскаль.полуаеться что я изначально не прав был(.
x = rand;
eps = 1e-6;
n = 0;
s = 0;
sn = 0;
r = 1;
while r > eps
   n = n + 1;
   sn = s + ((-1) ^ n) * (((2 * x)^(2 * n)) / factorial(n * 2));
   r = abs(s - sn);
   s = sn;
end
s

%N3.2
x = rand;
eps = 1e-6;
n = 0;
s = 0;
sn = 0;
r = 1;
while r > eps
   n = n + 1;
   sn = s + (sin((pi * (n*pi/180)) / 4)*((x * 1) / n ^ (n - 1)));
   r = abs(s - sn);
   s = sn;
end
s

%N4
%| - 1 V - 5 X -10 XL - 40 L - 50 XC - 90 C - 100 CD - 4000 D - 500 CM - 900 M - 1000
%До 3999
r = "";
a = 3555;
%1000
ma = idivide(int64(a),int64(1000));
if ma >= 1
    for n = 1:ma
         r = r + "M";
    end
end
%900
mma = mod(a,1000);    
if mma >= 900
    r = r + "CM";
    mma = mma - 900;
end
%500
da = idivide(int64(mma),int64(500));
if da >= 1
    for n = 1:da
         r = r + "D";
    end
    mda = mod(mma,500);
else
    mda = mma;
end
%400
if mda >= 400
    r = r + "CD";
    mda = mda - 400;
end
%100
ca = idivide(int64(mda),int64(100));
if ca >= 1
    for n = 1:ca
         r = r + "C";
    end
    mca = mod(mda,100);
else
    mca = mda;
end
%90
if mca >= 90
    r = r + "XC";
    mca = mca - 90;
end
%50
la = idivide(int64(mca),int64(50));
if la >= 1
    for n = 1:la
         r = r + "L";
    end
    mla = mod(mca,50);
else
    mla = mca;
end
%40
if mla >= 40
    r = r + "XL";
    mla = mla - 40;
end
%10
xa = idivide(int64(mla),int64(10));
if xa >= 1
    for n = 1:xa
         r = r + "X";
    end
    mxa = mod(mla,10);
else
    mxa = mla;
end
%9-1
if mxa == 9
    r = r + "LX";
elseif mxa == 8
    r = r + "VLLL";
elseif mxa == 7
    r = r + "VLL";
elseif mxa == 6
    r = r + "VL";
elseif mxa == 5
    r = r + "V";
elseif mxa == 4
    r = r + "LV";
elseif mxa == 3
    r = r + "LLL";
elseif mxa == 2
    r = r + "LL";
else mxa == 1
   r = r + "L";
end
r

