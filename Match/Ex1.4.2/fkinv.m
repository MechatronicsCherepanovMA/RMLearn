function X = fkinv(a,b)
        %Функция для преобразования каординат в вектор
        X =[];
        la = length(a);
        lb = length(b);
        if lb == la
            if la == 2
                X1 = b(1) - a(1);
                X2 = b(2) - a(2);
                X = [X1 X2];
            else
                X1 = b(1) - a(1);
                X2 = b(2) - a(2);
                X3 = b(3) - a(3);
                X = [X1 X2 X3];
            end
            
        end