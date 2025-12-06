% 1. 准备数据
base = datetime(2025, 1, 1, 0);  % 起始时间
x_time = base + hours(0:2:48);   % 每2小时一个数据点（共25个）
y_price = [100.0, 100.2, 101.0, 100.5, 100.8, 102.0, 101.5, 101.8, ...
           101.3, 100.9, 100.0, 99.5, 100.0, 99.8, 100.5, 101.2, ...
           101.0, 101.5, 102.5, 103.0, 102.8, 102.5, 102.0, 101.5, 101.8];

% 2. 创建画布并绘图（样式：绿色-圆形标记-实线）
figure('Position', [100, 100, 800, 500]);
plot(x_time, y_price, 'go-', 'LineWidth', 1.5, 'MarkerSize', 4);

% 3. 定制X轴刻度
% 主刻度：每12小时，格式YYYY-MM-DD HH:MM，蓝色朝外（长10宽2），标签旋转15°
xticks(base + hours(0:12:48));  % 主刻度位置（0/12/24/36/48小时）
xtickformat('yyyy-MM-dd HH:mm');
xticklabelcolor('blue');
xtickangle(15);  % 标签旋转
set(gca, 'XTickLength', [0.02, 0.01]);  % 主刻度长度（相对轴长），对应题目"长10"（视觉比例）
set(gca, 'XTickWidth', 2);  % 主刻度线宽

% 次刻度：每2小时，红色朝内（长5）
ax = gca;
ax.XAxis.MinorTick = 'on';
ax.XAxis.MinorTickValues = base + hours(2:2:46);  % 次刻度位置（避开主刻度）
ax.XAxis.MinorTickColor = 'red';
ax.XAxis.MinorTickLength = 0.01;  % 次刻度长度，对应"长5"
ax.XAxis.MinorTickStyle = 'in';  % 次刻度朝内

% 4. 添加网格、标题和轴标签
grid on;
grid minor;  % 显示次刻度网格
title('48小时股票价格走势', 'FontSize', 14);
xlabel('时间', 'FontSize', 12);
ylabel('股票价格（元）', 'FontSize', 12);

% 5. 优化布局
tightfig;  % 紧凑布局（若未定义，可替换为：axis tight;）