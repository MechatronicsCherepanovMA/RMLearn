%�������� ������ ������� 1(������ �������)

%������� ����������
%t(�����) ���������� �� 1 �� 10 � � ����� 0.05
t = 0:0.05:10;%������ �������.
l1 = 1; %����� ������� ����� 1 ����
l2 = 0.5;%������ ������� ������ 0.5 �����

%������ ��������� ����� �������� �� �������
f1 = sin(pi * t / 10);
f2 = -sin(pi * t / 10);

%������� ��� �������.
x = l1 * cos(f1) + l2 * cos(f1 + f2);
y = l1 * sin(f1) + l2 * sin(f1 + f2);

%������ ��� x(t)
figure
plot(x,t)
title('x(t)')


%������ ��� y(t)
figure
plot(y,t)
title('y(t)')


%������ ��� x(y)
figure
plot(x,y)
title('x,y')
axis equal tight