function dxdt = ef4(t,x)
    %1 - x;2 - v; 3 - f;4 - w;5 - z,6 - a,7 - b,8 - c.
    %� ������� ���������� � ��������� �� ����� � ��� ��� ������� ����������
    %��� �������� ���.
    rx = x;
    rx(2) = -(x(8)/x(6)) * x(5) * -(x(8)/x(6)) * x(3);
    rx(4) = -(x(8)/x(6)) * x(5) * -(x(8)/x(6)) * x(3);
    rx(5) = x(4);
    rx(3) = x(3);
    dxdt = rx;