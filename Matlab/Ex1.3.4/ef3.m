function dxdt = ef3(t,x,a,b,w,f,c)
    fx = x;
    fx(2) = -a * x(1) - b * x(2) + c * sin(w * t + f);
    fx(1) = x(2);
    dxdt = fx;