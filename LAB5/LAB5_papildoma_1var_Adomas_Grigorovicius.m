% Adomas Grigorovičius  Papildoma LD5 EDif-25/1 1var.
A = [];
B = [];

while true
    a = round(rand*5);
    b = round(rand*7);

    A(end+1) = a;
    B(end+1) = b;

    if a == b
        break;
    end
end

figure;
plot(1:length(A), A, '-o', 'LineWidth', 1.5);
hold on;
plot(1:length(B), B, '-s', 'LineWidth', 1.5);
hold off;
xlabel('Iteracijos numeris');
ylabel('Sugeneruotas skaičius');
title('Atsitiktinių skaičių kitimas');
legend('round(rand*5)', 'round(rand*7)');
grid on;
