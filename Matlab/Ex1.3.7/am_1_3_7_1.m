close all;

phi = 0:0.1:4*pi;
y1 = sin(phi);
y2 = cos(phi);
y3 = sin(phi).^2;

f1 = figure('Color', 'w');%������ �������, ��������� ����� ���� ����, ��������� ������ �� ������-������� � ���������� figure_handle
plot(phi,y1,phi,y2, 'LineWidth', 3, 'LineStyle', '--');%������ �������, �������� ������� � ��� �����
hold on;%�������� �����, � ������� ����� ������� �� ����� ������� ������
plot(phi,y3, 'LineWidth', 1.5);%������ ��� ���� ������ (��� hold on ���� ������ ��� �� ����������)
grid on;% �������� ����������� ����� 
grid minor;% �������� ����������� ������������� ����� ����� 
ax = gca;% ��������� ������ �� ������ "��� �������� �������" - ��� �������� ��� ��������� ����� �����
ax.LineWidth = 0.5;%��������� ������� ����� �����
ax.MinorGridLineStyle = '-';%��������� ��� ������������ ����� �����
ax.GridAlpha = 0.6;%��������� ������������ �������� ����� �����
ax.MinorGridAlpha = 0.2;%��������� ������������ ������������� ����� �����
ax.FontName = 'Times New Roman';%����� ��� ��������
ax.FontSize = 18;%������ ������ ��� ��������
xlabel_handle = xlabel('$$\varphi$$,rad');%������� �� ��� ������� � ������� latex
xlabel_handle.Interpreter = 'latex';%���������, ��� �� ����� ������������ ������ latex
ylabel_handle = ylabel('$$y_1$$ (m), $$y_2$$ (m)');%������� �� ��� ������� � ������� latex
ylabel_handle.Interpreter = 'latex';%���������, ��� �� ����� ������������ ������ latex
legend_handle = legend('$$y_1$$ (m)', '$$y_2$$ (m)');%������� ������� � ������� latex
legend_handle.Interpreter = 'latex';%���������, ��� �� ����� ������������ ������ latex
title('Figures for $$\varphi \in [0,\pi]$$', 'FontName', 'Times New Roman', 'Interpreter', 'latex', 'FontSize', 18);%��������� �������
% 
figure;% ������ ����� ������� (����� ���� ��� �������)
plot(y1,y2, 'Marker', 'o', 'MarkerIndices',1:floor(length(phi)/2), 'MarkerFaceColor','g');
% % ����e� ����������� y2 �� y1, ��������� ����� ��������� �� ���������, ����
% % ���������� �������, ������ ������� ���������� �� ���, � ������ ������
% % ��������, ���������� ������� ������ ������ 
% % ������ ��������� ����������������, �������...
axis equal tight;% ... ���������� ���������� ������� �� ����
grid on; 
grid minor;
ax = gca;
ax.GridAlpha = 0.6;
ax.LineWidth = 0.5;
ax.MinorGridLineStyle = '-';
ax.MinorGridAlpha = 0.2;
ax.FontName = 'Times New Roman';
ax.FontSize = 18;
xlabel('$$y_1$$, m', 'Interpreter', 'latex');% ������ ������� �� ��� ������� (����� ���������, ��� � ������� ����)
ylabel('$$y_2$$, m', 'Interpreter', 'latex');% ������ ������� �� ��� ������� (����� ���������, ��� � ������� ����)
% % �� ������...
% % �� ��� � ��� �������� ������������� ���������� ��� ���-�� �� ������
% % �������. ��� ��� �� � ����������� ���������� f1.
figure(f1);%������ ������ ������ ����� ��������
plot([phi(1),phi(length(phi))],[0.4,0.4],'LineWidth', 4, 'LineStyle', ':', 'Color', 'm');%������������ 


