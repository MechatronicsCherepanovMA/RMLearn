function x = flv(a)
%Функция для вычесления модуля вектора
        x =[];
        la = length(a);
        if la == 2
            x = (a(1) ^ 2 + a(2) ^ 2) ^ 0.5;
        else
            x = (a(1) ^ 2 + a(2) ^ 2 + a(3) ^ 2) ^ 0.5;
        end

    
  