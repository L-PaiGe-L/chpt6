% 1. 准备数据
x_all = 1:12;  % 1-12月
y_all_sales = [50, 55, 60, 65, 75, 80, 85, 90, 80, 70, 65, 70];  % 全国总销量
y_east_sales = [20, 22, 25, 28, 30, 35, 38, 40, 35, 30, 28, 30];  % 华东区销量

% 2. 创建画布
figure('Position', [100, 100, 800, 600]);

% 3. 绘制主图（全国总销量：蓝色-方形标记-实线）
ax1 = axes('Position', [0.1, 0.1, 0.8, 0.8]);  % 主图位置（左/下/宽/高）
plot(x_all, y_all_sales, 'bs-', 'LineWidth', 1.5, 'MarkerSize', 6);
title('全国及华东区销量月度走势', 'FontSize', 14);
xlabel('月份', 'FontSize', 12);
ylabel('销量（单位：万件）', 'FontSize', 12);
xlim([1, 12]);
ylim([40, 95]);
legend('全国总销量', 'Location', 'lower right', 'FontSize', 11);
grid on;

% 4. 绘制嵌入小图（华东区销量：红色-圆形标记-实线）
ax2 = axes('Position', [0.65, 0.65, 0.22, 0.22]);  % 小图位置（右上角）
plot(x_all, y_east_sales, 'ro-', 'LineWidth', 1.2, 'MarkerSize', 4);
xlabel('月份', 'FontSize', 8);
ylabel('销量', 'FontSize', 8);
xlim([1, 12]);
ylim([18, 42]);
legend('华东区销量', 'FontSize', 8);
grid on;

% 5. 小图刻度标签缩小（避免拥挤）
set(ax2, 'XTickLabelFontSize', 8, 'YTickLabelFontSize', 8);

% 6. 保持主图激活状态
axes(ax1);