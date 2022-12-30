function dxdt = ef2(t,x)
%1 - x;2 - v; 3 - f;4 - w;5 - z,6 - a,7 - b,8 - c.
    rx = x;
    rx(2) = -2.1 * x(1) - 0.3*x(2);
    rx(1) = x(2);
    dxdt = rx;