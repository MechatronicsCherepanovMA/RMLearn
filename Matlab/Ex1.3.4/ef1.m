function dxdt = ef1(t,x)
%1 - x;2 - v; 3 - f;4 - w;5 - z,6 - a,7 - b,8 - c.
    x(1) = x(1) .* -1;
    dxdt = x;
