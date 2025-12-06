% 1. 准备数据（避开无穷大奇点：±pi/2附近）
x = linspace(-pi + 0.1, pi - 0.1, 200);  % -pi+0.1到pi-0.1
y = tan(x);  % 正切函数

% 2. 创建画布并绘图
figure('Position', [100, 100, 700, 500]);
plot(x, y, 'b-', 'LineWidth', 2);
title('正切函数 y = tan(x) 图像', 'FontSize', 14);
legend('y = tan(x)', 'Location', 'upper right', 'FontSize', 11);

% 3. 隐藏顶部和右侧轴脊，移动轴脊到原点
ax = gca;
ax.Spine.Top = 'off';
ax.Spine.Right = 'off';
ax.XAxis.Location = 'origin';
ax.YAxis.Location = 'origin';

% 4. 定制Y轴范围（-4到4）
ylim([-4, 4]);
xlim([-pi-0.2, pi+0.2]);

% 5. 定制X轴刻度（LaTeX格式标签）
xticks([-pi, -pi/2, 0, pi/2, pi]);
xticklabels({'$-\pi$', '$-\pi/2$', '$0$', '$\pi/2$', '$\pi$'});
ax.TickLabelInterpreter = 'latex';  % 启用LaTeX解释器
ax.FontSize = 11;

% 6. 添加网格
grid on;
axis equal;