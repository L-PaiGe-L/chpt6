% 1. 准备数据
languages = {'Python', 'JavaScript', 'Java', 'C#', 'Go', 'TypeScript'};
votes = [450, 380, 290, 180, 120, 90];
y_pos = 1:length(languages);  % Y轴位置

% 2. 创建画布并绘图（水平条形图）
figure('Position', [100, 100, 700, 500]);
barh(y_pos, votes, 'FaceColor', [0.3, 0.7, 0.9], 'EdgeColor', 'black');

% 3. 隐藏顶部和右侧轴脊
ax = gca;
ax.Spine.Top = 'off';
ax.Spine.Right = 'off';

% 4. 隐藏Y轴刻度线
ax.YTickLength = [0, 0];  % 刻度线长度设为0（仅保留标签）

% 5. 添加得票数值标签（选做）
for i = 1:length(votes)
    text(votes(i) + 5, y_pos(i), num2str(votes(i)), ...
         'VerticalAlignment', 'middle', 'FontSize', 10);
end

% 6. 设置标题、轴标签和Y轴标签
title('编程语言受欢迎程度投票结果', 'FontSize', 14);
xlabel('得票数', 'FontSize', 12);
ylabel('编程语言', 'FontSize', 12);
yticks(y_pos);
yticklabels(languages);
xlim([0, 500]);  % 扩展X轴范围，避免数值标签溢出
grid on;
axis tight;