function R = ffi(t)
    %������� ��� ������� ����� �����������
        global w;
    R = [(1-cos(w * t)).^2*pi/2;sin(2* w *t)*pi/2];
end