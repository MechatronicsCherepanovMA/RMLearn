function dxdt = ef3(t,x)
    %1 - x;2 - v; 3 - f;4 - w;5 - z,6 - a,7 - b,8 - c.
    rx = x;
    rx(2) = -x(6) * x(1) - x(7) + x(8) * sin(x(4) * t + x(3));
    rx(1) = x(2);
    dxdt = rx;