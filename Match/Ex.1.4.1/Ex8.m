clear;
clc;
%N1
p = [0,1];
RV = [];
n = 0;
for j = 1:12
    for i = 1:12 %��� 2
        for z = [8 9 10 11] 
            if j == z  
                break
            end  
        end
        if j == 2 & i < 2 %��� 2
            continue
        end
        if j == 3 & (i == 2 | i == 4 | i == 5)%��� 3
            continue
        end
        if j == 4 & i <  4%��� 4
            continue
        end
        if j == 4 & i <  5 %��� 5
            continue
        end
        if j == 6 & (i > 1 &  i <= 5 | i > 6 & i < 12 )%��� 6
            continue
        end
        if j == 7 & i < 12 %��� 7
            continue
        end
        if j == 12 & i < 12 %��� 12
            continue
        end
        O = zeros(j,i);
        ONE = eye(j,i);
        R = randi(p,j,i);
        T = ones(j,i);
        T = triu(T,1);
        %N4
        if j == 12 & i == 12
            A = (-1)*det(R);%���� �� ������ ������� ���,�� � ����� ��� �� �����.���� �� ������ ���� �� ����������.
            R(1,:)= [];%������ ������ �� ������.���������� �������,��� � ���������.
            R(:,1) = [];
            AR = (-1) ^ 1 * R
        end
        %N5
        if j == i %
            if det(O) > 1
                IO = inv(O);
            end
            if det(ONE) > 1
                IONE = inv(ONE);
            end
            if det(R) > 1
                IR = inv(R);
            end
            if det(T) > 1
                IT = inv(T);
            end
        end
        if j == 1 & i == 6 %��� 1
            break
        end
        
        if j == 2 & i == 3 % ��� 2
            break
        end
        %N2
        if j == 3 & i == 3
            B = [O,ONE,;R,T]
        end
        if j == 3 & i == 6 % ��� 3
            break
        end
        if j == 4 & i == 4 % ��� 4
            break
        end
        end
        if j == 5 & i == 5 % ��� 5
            break
        end
end
%N3
%� ������� ��� ��� ������� �� �� ������� ��� �������� ������.
%���� ���� �������� ������ ����� ������ � ���� � ��������� �
%����������,��� ����� �������,�� ��������������.�������� � ��� ��� � ���
%��������� ����� ��� �� ���������� � ����.
%������ ������� ������� ������� ������� �������(�� �������� � ��������).���� �� ���� �����
%���������� � ��������� ������ �� ������ �� �������� �� �� ��������.�� �� ������� �
%������ ��� �� ����������.
%         for n = 1:15%������� ���� ���������� ��� ������������ .
%             for m = 1:15
%                 if lengh(Xn) == lengh(Xm')%�������� �� ���������,�
%                 ������������ ������� ���  ������������� ����������.
%                     X = Xn * Xm
%                 end
%             end
%         end
%N6
%N6.a
A = [-1 1;0 1];
B = [2 0;-1 3];
%A * X == B #isxod
%inv(A)*A* X == inv(A) * B #inv(A) * A = E
%E*X=inv(A)*B # E * X == X tc eye(E)
X = inv(A)*B
%��������
BP = A * X
B == BP

%N6.b
%X * A == B
%X * A * inv(A) == B * inv(A) # A * inv(A) = E
%X * E == B *inv(A) # X * E = X tc eye(E)
X = B * inv(A);
%��������
BP = X * A
B == BP

%N6.c
A = [1 2;3 4];
B = [3 -2;5 -4];
C = [11 -8;41 -36]
%A * X * B == C
X = inv(A) * C * inv(B);
%��������
CP= A * X * B
C

%N7
A =[1 0 0;2 9 0;3 4 -1]
B = [1 3 -2;-1 2 0;3 -1 -4]
E = eye(3)
%X * A - 2 * B == E
%X * A == E + 2*B 
DB = 2 * B;
%X * A == E + DB
E = eye(3)
EDB = E + DB
%X * A == EDB
%X * A * inv(A) == EDB *inv(A) #A * inv(A) = E
%X * E == EDB *inv(A) #E = X tc eye(E)
X = EDB * inv(A);
%��������
EC = X * A - 2 * B
E

%N8
%N8a
A = [1 1 -1;2 -1 1;1 4 2];
B = [1;8;1]
AB = [A B];
X = 0
if rank(A) == rank(AB)
   %A * X = B
   X = inv(A) *B
end

%N8a
A = [1 2 -1;2 4 -3;3 6 -3]
B = [3;2;7];
AB = [A B];
if rank(A) == rank(AB)
   %A * X = B
   X = inv(A) * B
end








