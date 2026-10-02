A = 5; f = 5; sigma = 1.5; U1 = 3; U2 = 2;

t = 0:0.001:1;

s = A*sin(2*pi*f*t);
n = sigma*randn(size(t));
s = s + n;

a = s(s > U1);

b = s;
b(abs(b) < U2) = 0;

c = length(s);

d = length(a);

e_max = max(b);
e_min = min(b);

disp(a)
disp(b)
disp(c)
disp(d)
disp(e_max)
disp(e_min)

idx = find(s > U1);
t_a = t(idx);

[a_max, i_max] = max(a);
[a_min, i_min] = min(a);

figure('Name', 'Signalu grafinis atvaizdavimas', 'Position', [100 100 1300 500]);

subplot(1, 2, 1);
plot(t, s, '-', 'LineWidth', 1.25); hold on;
plot(t, b, '--', 'LineWidth', 1.25);
yline(U1, 'r-', 'LineWidth', 1.25);
yline(U2, 'k-', 'LineWidth', 1.25);
hold off;
grid on;
title('Pradinis ir filtruotas signalai', 'Color', 'b', 'FontSize', 14);
xlabel('Laikas t, s');
ylabel('Itampa U, V');
legend('Pradinis signalas', 'Filtruotas signalas', 'Riba U_1', 'Riba U_2', 'Location', 'best');
xlim([0 1]);
ylim([min(s) - 1, max(s) + 1]);

subplot(1, 2, 2);
stem(t_a, a, 'b', 'LineWidth', 1.25, 'MarkerSize', 4); hold on;
plot(t_a(i_max), a_max, 'o', 'MarkerSize', 10, 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'g');
plot(t_a(i_min), a_min, 's', 'MarkerSize', 10, 'MarkerFaceColor', 'm', 'MarkerEdgeColor', 'm');
yline(U1, 'r-', 'LineWidth', 1.25);
hold off;
grid on;
title('Pradinio signalo reiksmes, virsijancios U_1', 'Color', 'b', 'FontSize', 14);
xlabel('Laikas t, s');
ylabel('Itampa U, V');
legend('Reiksmes > U_1', 'Maksimali itampa', 'Minimali itampa', 'Riba U_1', 'Location', 'best');
xlim([0 1]);
ylim([U1 - 0.5, max(a) + 1]);

