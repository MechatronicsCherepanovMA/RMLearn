function dxdt = ef1(t,x)
    x(1) = x(1) .* -1;
    dxdt = x;
