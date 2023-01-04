function x = fopv(a,d)
    %Функция для нахождения проэкция вектора.
        x = dot(a,d)/flv(d);
        
function le = flv(a)
    le = (a(1) ^ 2 + a(2) ^ 2 + a(3) ^ 2) ^ 0.5;