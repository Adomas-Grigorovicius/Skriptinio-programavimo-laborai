% Adomas Grigorovičius LD5 EDif-25/1 1var.

% 1 Užduotis
signalas = struct();
x = 0:0.01:2;
signalas.f = sin(2*pi*x);
signalas.x = x;
signalas.pavadinimas = 'f(x) = sin(2\pix)';

figure;
plot(signalas.x, signalas.f);
title(signalas.pavadinimas);
xlabel('x');
ylabel('f(x)');
grid on;

% 2 Užduotis
while true
    a = input('Įveskite a: ');
    b = input('Įveskite b: ');
    c = input('Įveskite c: ');
    x = input('Įveskite x: ');

    f = a*x^2 + b*x + c;
    disp(['f = ', num2str(f)]);

    if a == 0 && b == 0 && c == 1 && x == 1
        break;
    end
end
