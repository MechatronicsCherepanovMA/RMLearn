function J = aj(fi)
    %������� �������� ������� ������������� ��������.
    global l1;
    global l2;
    J = [-l1*sin(fi(1,:)) - l2*sin(fi(1,:) + fi(2,:)), -l2*sin(fi(1,:) + fi(2,:));l1*cos(fi(1,:)) + l2*cos(fi(1,:) + fi(2,:)), l2*cos(fi(1,:) + fi(2,:))];
end