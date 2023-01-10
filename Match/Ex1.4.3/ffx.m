function R = ffx(fi)
    %функция для расчёта каординат
    global l1;
    global l2;
    R = [l1*cos(fi(1,:)) + l2*cos(fi(1,:) + fi(2,:));l1 * sin(fi(1,:)) + l2 * sin(fi(1,:) + fi(2,:))];
end
   