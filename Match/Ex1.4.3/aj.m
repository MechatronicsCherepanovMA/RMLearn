function J = aj(fi)
    %функция подсчёта матрици аналетическим способом.
    global l1;
    global l2;
    J = [-l1*sin(fi(1,:)) - l2*sin(fi(1,:) + fi(2,:)), -l2*sin(fi(1,:) + fi(2,:));l1*cos(fi(1,:)) + l2*cos(fi(1,:) + fi(2,:)), l2*cos(fi(1,:) + fi(2,:))];
end