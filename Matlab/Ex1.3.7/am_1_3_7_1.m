close all;

phi = 0:0.1:4*pi;
y1 = sin(phi);
y2 = cos(phi);
y3 = sin(phi).^2;

f1 = figure('Color', 'w');%создаём рисунок, указываем белый цвет фона, сохраняем ссылку на объект-рисунок в переменной figure_handle
plot(phi,y1,phi,y2, 'LineWidth', 3, 'LineStyle', '--');%рисуем графики, указывая толщину и тип линии
hold on;%включаем режим, в котором новые графики не будут стирать старые
plot(phi,y3, 'LineWidth', 1.5);%рисуем ещё один график (без hold on этот график стёр бы предыдущие)
grid on;% включаем отображение сетки 
grid minor;% включаем отображение промежуточных линий сетки 
ax = gca;% сохраняем ссылку на объект "оси текущего рисунка" - это позволит там настроить линии сетки
ax.LineWidth = 0.5;%указываем толщину линий сетки
ax.MinorGridLineStyle = '-';%указываем тип промежуточых линий сетки
ax.GridAlpha = 0.6;%указываем прозрачность основных линий сетки
ax.MinorGridAlpha = 0.2;%указываем прозрачность промежуточных линий сетки
ax.FontName = 'Times New Roman';%шрифт для подписей
ax.FontSize = 18;%размер шрифта для подписей
xlabel_handle = xlabel('$$\varphi$$,rad');%подпись по оси абсцисс в формате latex
xlabel_handle.Interpreter = 'latex';%указываем, что мы хотим использовать формат latex
ylabel_handle = ylabel('$$y_1$$ (m), $$y_2$$ (m)');%подпись по оси ординат в формате latex
ylabel_handle.Interpreter = 'latex';%указываем, что мы хотим использовать формат latex
legend_handle = legend('$$y_1$$ (m)', '$$y_2$$ (m)');%легенда графика в формате latex
legend_handle.Interpreter = 'latex';%указываем, что мы хотим использовать формат latex
title('Figures for $$\varphi \in [0,\pi]$$', 'FontName', 'Times New Roman', 'Interpreter', 'latex', 'FontSize', 18);%заголовок графика
% 
figure;% создаём новый рисунок (новое окно для рисунка)
plot(y1,y2, 'Marker', 'o', 'MarkerIndices',1:floor(length(phi)/2), 'MarkerFaceColor','g');
% % рисуeм зависимость y2 от y1, настройки линий оставляем по умолчанию, зато
% % показываем маркеры, только маркеры показываем не все, а только первую
% % половину, декорируем маркеры зелёным цветом 
% % график получился сдеформированный, поэтому...
axis equal tight;% ... выставляем одинаковый масштаб по осям
grid on; 
grid minor;
ax = gca;
ax.GridAlpha = 0.6;
ax.LineWidth = 0.5;
ax.MinorGridLineStyle = '-';
ax.MinorGridAlpha = 0.2;
ax.FontName = 'Times New Roman';
ax.FontSize = 18;
xlabel('$$y_1$$, m', 'Interpreter', 'latex');% делаем подпись по оси абсцисс (более компактно, чем в примере выше)
ylabel('$$y_2$$, m', 'Interpreter', 'latex');% делаем подпись по оси ординат (более компактно, чем в примере выше)
% % Всё готово...
% % Но тут у нас возникла необходимость нарисовать ещё что-то на первом
% % графике. Вот тут то и потребуется переменная f1.
figure(f1);%делаем первый график снова активным
plot([phi(1),phi(length(phi))],[0.4,0.4],'LineWidth', 4, 'LineStyle', ':', 'Color', 'm');%дорисовываем 


