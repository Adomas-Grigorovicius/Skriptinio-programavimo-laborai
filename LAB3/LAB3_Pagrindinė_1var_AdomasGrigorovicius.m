% Adomas Grigorovičius LD3 2026-10-01 EDif-25/1 1var.
%1 Užduotis
t = linspace(-pi, pi, 50);
y = sin(t);

figure(1);
plot(t, y, 'r--');
axis([min(t) max(t) min(y) max(y)]);
grid on;
title('Funkcija y(t) = sin(t)');
xlabel('t');
ylabel('y');
legend('y(t) = sin(t)', 'Location', 'northeastoutside');

x = linspace(-pi, pi, 50);
y1 = -x.^2 + 9;
y2 = x.^3 - 2*x.^2 - 9;

figure(2);
plot(x, y1, 'b-', x, y2, 'g-.');
axis([min(x) max(x) min([y1 y2]) max([y1 y2])]);
grid on;
title('Funkcijos y_1(x) ir y_2(x)');
xlabel('x');
ylabel('y');
legend('y_1(x) = -x.^2 + 9', 'y_2(x) = x.^3 - 2*x.^2 - 9', 'Location', 'northeastoutside');

%2 Užduotis
P = [6 1 2 4 8 0;
     0 2 6 7 6 5;
     5 3 7 2 7 2;
     4 6 8 1 9 8];

vardai = {'V. A.', 'A. G.', 'D. N.', 'A. T.', 'E. S.', 'J. S.'};

figure;

subplot(2, 1, 1);
bar(P);
axis([0.5 size(P, 1) + 0.5 0 10]);
title('a)');
xlabel('l.d.');
ylabel('p');
legend(vardai, 'Location', 'northeastoutside');

subplot(2, 1, 2);
V = mean(P, 1);
stem(1:numel(V), V, 'k');
axis([0 numel(V) + 1 0 10]);
title('b)');
xlabel('Studentas');
ylabel('p');
