clear;clc;
%N1.4.2
%����������
a = [4;5;2];
b = [3;0;1];
c = [-1;4;2];
d = [5;7;8];
%N1
%N1.1
%��������� ������������ �������� ����� ���� ���� ��� ������������ ���� � �����
%���� ���� ������ ��������� = 90  ��������
ab = dot(a,b)
ac = dot(a,c)
cb = dot(c,b)
%N1.2
pad = fopv(a,d)
pcd = fopv(c,d)
pbd = fopv(b,d)

%N2
a = [7;6;-6]
b = [6;2;9]
fa = flv(a);
fb = flv(b);
ab = a(1)* b(1) + a(2) * b(2) + a(3) * b(3);
%�������� �� ����������� ���������� ����
if fa == fb %�������� �� ����������� ����� ��������
    if ab == 0 %�������� �� ������������� ��������
        %|c| = |a| = |b|
        %=>
        %ac = a(1)* c(1) + a(2) * c(2) + a(3) * c(3) = 0 #(1)
        %bc = b(1)* c(1) + b(2) * c(2) + b(3) * c(3) = 0 #(2)
        %|b| = |a| = |c| = (c(1) ^ 2 + c(2) ^ 2 + c(3) ^ 2) ^ 0.5 = 11 #(3)
        
        
        %=> #�������� �(1) �����  1 ���������.
        %c(1) = (a(3)*c(3) - a(2) * c(2)) / a(1) # (4)
        %=> #�������� �(1) �� 2 ���������
        %bc = b(1) * ((a(3)*c(3) - a(2) * c(2)) / a(1)) + b(2) * c(2) + b(3) * c(3) = 0
        %bc = b(1) * (a(3)*c(3) - b(1) * a(2) * c(2) + a(1) * b(2) * c(2) +
        %a(1) * b(3) * c(3) = 0
        %bc = b(1) * a(3)*c(3) - b(1) * a(2) * c(2) + a(1) * b(2) * c(2) +
        %a(1) * b(3) * c(3) 
        %bc = (b(1)* a(3) + a(1) * b(3)) * c(3) -  b(1) * a(2) * c(2) + a(1) * b(2) * c(2)
        %bc = (b(1)* a(3) + a(1) * b(3)) * c(3) - (b(1) * a(2) - a(1) *
        %b(2)) * �(2) = 0
        %=> �������� ����� ���������� ��������� �(2)
        %�(2) = %(((b(1)* a(3) + a(1) * b(3)) * c(3))/(b(1) * a(2) - a(1) *
        %b(2))% #(5)
        %=> ����������� ���������� ��������� � 4 ���������
        %c(1) = (a(3)*c(3) - a(2)) * (((b(1)* a(3) + a(1) * b(3)) * c(3))/(b(1) * a(2) - a(1) * b(2)))) / a(1) #(6)
        % => # 4 � 5 ����������� � 3 2��������
        %|b| = |a| = |c| = (c(1) ^ 2 + c(2) ^ 2 + c(3) ^ 2) ^ 0.5 = 11 #(3)
        %|b| = |a| = |c| = (((a(3)*c(3) - a(2) * (((b(1)* a(3) + a(1) * b(3)) * c(3))/(b(1) * a(2) - a(1) * b(2)))) / a(1)) ^ 2 + 
        %((((b(1)* a(3) + a(1) * b(3)) * c(3))/(b(1) * a(2) - a(1) * b(2))) ^ 2 + c(3) ^ 2) ^ 0.5 = 11
        %=> �������� �(3)
        k = b(1) * a(2) - a(1) * b(2);
        g = b(1)* a(3) + a(1) * b(3);
        %|b| = |a| = |c| = (((a(3)*c(3) - a(2)) * ((g * c(3))/k)) / a(1)) ^ 2 + (((g * c(3))/k))^ 2 + c(3) ^ 2) = 121
        h = (g * c(3)) / k;
        %|b| = |a| = |c| = (((a(3)*c(3) - a(2)) * h / a(1)) ^ 2  + c(3) ^ 2  = 121 - h ^ 2
        %|b| = |a| = |c| = ((((a(3)*c(3) - a(2)) * h/ a(1)) ^ 2 * a(1)^2 + (c(3) ^ 2)* a(1)^2 = (121 - h ^ 2) * a(1) ^ 2
        %|b| = |a| = |c| = ((((a(3)*c(3) - a(2)) * h) ^ 2 + c(3) ^ 2 * a(1)^2 = (121 - h ^ 2) * a(1) ^ 2
        %|b| = |a| = |c| = ((((a(3)*c(3) - a(2)) * h) ^ 2 + c(3) ^ 2= ((121- h ^ 2) * a(1) ^ 2) / * a(1)^2 
        %|b| = |a| = |c| = ((((a(3)*c(3) - a(2)) * h) ^ 2 + c(3) ^ 2= ((121- h ^ 2) * a(1) ^ 2) / * a(1)^2 
        %|b| = |a| = |c| = (a(3) * c(3) - a(2)) ^ 2 * h ^ 2 + c(3) ^ 2= ((121- h ^ 2) * a(1) ^ 2) / * a(1)^2 
        %|b| = |a| = |c| = (a(3) * h * c(3) * h) - (a(2) * h)  ^ 2 + c(3) ^ 2= ((121- h ^ 2) * a(1) ^ 2) / * a(1)^2
        %|b| = |a| = |c| = (a(3) * h * c(3) * h) ^ 2   + c(3) ^ 2= ((121- h ^ 2) * a(1) ^ 2) / * a(1)^2 + a(2) * h)  ^ 2
        %|b| = |a| = |c| = a(3) ^ 2 * h ^ 2 * c(3)^ 2 * h^ 2   + c(3) ^ 2= ((121- h ^ 2) * a(1) ^ 2) / * a(1)^2 + a(2) * h)  ^ 2
        %|b| = |a| = |c| =  c(3)^ 2  + c(3) ^ 2=(((121- h ^ 2) * a(1) ^ 2) /  a(1)^2 + a(2) * h)  ^ 2) / h^ 2 / h ^ 2 / a(3) ^ 2
        %|b| = |a| = |c| =  c(3)^ 4=(((121- h ^ 2) * a(1) ^ 2) / * a(1)^2 + a(2) * h)  ^ 2) / h^ 2 / h ^ 2 / a(3) ^ 2
        %|b| = |a| = |c| =  (c(3) ^ 4 ) ^ - 4 =(((121- h ^ 2) * a(1) ^ 2) / * a(1)^2+ a(2) * h)  ^ 2) / h^ 2 / h ^ 2 / a(3) ^ 2 ^ (-4)
        p(3) = ((((121- h ^ 2) * a(1) ^ 2) / a(1)^2+ a(2) * h)  ^ 2 / h ^ 2 / h ^ 2 / a(3) ^ 2 )^ (-4)
        %�� ������� �������.��� ����������� � ���� �� ���� ��������� � ����
        %�� ������ �� ���������� ������.������� ������� �� ������� �� ���
        %���� ��������� ������ �������� � ������ ����������� ���������.
        %������ ����� ���������� �(3) � 5 � 6 ��������� ������� �����.
   
    end
end

%N3
X = 60;
Y = 75;
la = 2
a = [0,0,0]
%
cX = cos(X * pi / 180)
cY = cos(Y * pi / 180)
%cX ^ 2 + cY 2 + cZ ^ 2 = 1 ��������� ��������� ��������� ���������� ���� �� ����� ?, ?, ?. ���� �������� ��� ������.
cZ = 1 - cX ^ 2 - cY ^ 2;
%cosA = a(1)/la
a(1)= cX * la;%cosX = a(1)/la #���������� ������� � ����������������� ������ � ��� ��� �������� �� ����������� ��������������� ������������ �������� (������������ ���).
a(2)= cY * la;%cosY = a(2)/la #=>������������� �� ������� �������� ������� ���� �������������� �����������
a(3)= cZ * la;%cosZ = a(3)/la #
a

%N4 
%��� ����� �������� � ������� ��������������� =>����������� => �a��������.
a = [-1,3,0];
%b = [2,x,0];
b = [2,0,0];
% ( a(1) = A * b(1)   ( A = a(1)/b(1) #�������� A �.� � ������ ������ �������������� ������������ ��
% ( a(2) = A * b(2) = ( b(2) = a(2)/A #��� ���������� �������������� 
% ( 0 = A * 0   =>    (#�� ����� �������� �.� ��������� �� ����
%=>
b(2)= a(2)/(a(1)/b(1));


%N5
A = [1,4,3];
B = [2,3,1];
C = [-2,1,3];
D = [0,1,2];
%������� ������ �� �����������
AB = fkinv(A,B)%������� ��� �������������� ��������� � ������
AC = fkinv(A,C)
AD = fkinv(A,D)
%��������� ������� ���������
%SP = (1 /2 ) * |AB * AC|
S = flv(cross(AB,AC)) / 2 % flv ������� ���������� ������(�����) �������
%��������� ����� ������ ��������
%���������� �������
%��� ����� ���������� ��������� ��������� ���������.� ���������� ��������
%�� ���� ��������� ���������
%��� ��� ��������� ��������� � ����� ���� � �� �����������
%�������� ����� ��������� �� ����� A � �������� AB � AC.�� ������ ����� ���
%��� ��� ���� ����� � ����������� ��������� � ��������.
%A = [1,4,3];AB = [1,-1,-2];AC = [-3,-3,0]
%|x - a(1),AB(1),AC(1)|
%|y - a(2),AB(2),AC(2)|== 0 
%|z - a(3),AB(3),AC(3)|
%��� ��� ��������� ��������� � ����� ���� � �� �����������.� ������ ���
%����� ������� ������� ����� ��������� ������������ ��������.
VP = cross(AB,AC)
V = dot(VP,AD) / 6% ����� ����� 6 ����� ���������� �������� ��������
%���������� ���� �� ������ �����
VP = [AC;AB;AD]
v = det(VP) / 6 %����� ������� ��������� ����������� ����� �� �����.����� ���� � �������� � ������ ����������.

%N6
a = [7,6,-6]
b = [6,2,9]
d = [8.3144,6.3132,-3.4662]
%��� ������������ ������� ������ ������� ��������
%��� ������� ������������  ����������� ����� � ������ �����, ����� ������������,
%������������ �� ��������� ������ ��������, ����� ����
O = [a;b;d]
OP = det(O)
if OP == 0 %��������� ���� ����� ����� ���������
    %cos(a;b) = det(a,b)/(flv(a) * flv(b)) ����(a;b_ = arccos(cos(a;b)  *180/pi
               x = dot(a,b)/(flv(a) * flv(b));
               y = cos(x);
               ab = acos(y)  *180/pi
               x = dot(a,d)/(flv(a) * flv(d));
               y = cos(x);
               ad = acos(y) *180/pi
               x = dot(b,d)/(flv(b) * flv(d));
               y = cos(x);
               bd = acos(y) *180/pi
else %��������� �������������
    %S = a * b * c => S = |a| * |b| * |d|
    S = flv(a) * flv(b) * flv(d) %flv - ������� ��� �������� ������ �������
end

