% 1. 准备数据
x = linspace(-5, 5, 100);  % -5到5，100个点
y = x.^2;  % 二次函数

% 2. 创建画布并绘图
figure('Position', [100, 100, 600, 500]);
plot(x, y, 'r-', 'LineWidth', 2);
title('二次函数 y = x² 图像', 'FontSize', 14);
legend('y = x²', 'Location', 'upper right', 'FontSize', 11);

% 3. 隐藏顶部和右侧轴脊
ax = gca;
ax.Spine.Top = 'off';
ax.Spine.Right = 'off';

% 4. 移动轴脊到原点(0,0)
ax.XAxis.Location = 'origin';  % X轴（底部轴脊）移到Y=0
ax.YAxis.Location = 'origin';  % Y轴（左侧轴脊）移到X=0

% 5. 设置坐标轴范围和网格
xlim([-5.5, 5.5]);
ylim([0, 25]);
grid on;
axis equal;  % 等比例坐标轴