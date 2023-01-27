function dxdt = ef2(t,x)
    rx = x;
    rx(2) = -2.1 * x(1) - 0.3*x(2);
    rx(1) = x(2);
    dxdt = rx;