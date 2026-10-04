
A = 5; f = 5; sigma = 1.5; U1 = 3; U2 = 2;

t = 0:0.001:1;
s = A*sin(2*pi*f*t) + sigma*randn(size(t));

b = s;
b(abs(b) < U2) = 0;

idx = s > U1;
ta = t(idx);
a = s(idx);

yl = [min(s) - 1, max(s) + 1];

figure;

subplot(1, 2, 1);
plot(t, s, '-', 'LineWidth', 1.25);
hold on;
plot(t, b, '--', 'LineWidth', 1.25);
yline(U1, 'r', 'LineWidth', 1.25);
yline(U2, 'k:', 'LineWidth', 1.25);
yline(-U2, 'k:', 'LineWidth', 1.25, 'HandleVisibility', 'off');
hold off;
grid on;
axis([t(1) t(end) yl]);
title('Pradinis ir filtruotas signalai', 'Color', 'b', 'FontSize', 14);
xlabel('Laikas t, s');
ylabel('Įtampa U, V');
legend('Pradinis signalas', 'Filtruotas signalas', 'Riba U_1', 'Ribos \pmU_2', 'Location', 'southoutside', 'NumColumns', 2);

subplot(1, 2, 2);
stem(ta, a, 'filled', 'MarkerSize', 3, 'LineWidth', 1.25);
hold on;
plot(ta(a == max(a)), a(a == max(a)), 'o', 'Color', 'g', 'MarkerSize', 10, 'LineWidth', 1.5);
plot(ta(a == min(a)), a(a == min(a)), 'v', 'Color', 'm', 'MarkerSize', 10, 'LineWidth', 1.5);
yline(U1, 'r', 'LineWidth', 1.25);
hold off;
grid on;
axis([t(1) t(end) U1 - 0.5, max(a) + 1]);
title('Pradinio signalo reikšmės, viršijančios U_1', 'Color', 'b', 'FontSize', 14);
xlabel('Laikas t, s');
ylabel('Įtampa U, V');
legend('Reikšmės > U_1', 'Maksimali įtampa', 'Minimali įtampa', 'Riba U_1', 'Location', 'southoutside', 'NumColumns', 2);
