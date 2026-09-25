% Adomas Grigorovičius LD2 2026-09-25 EDif-25/1 1var.

% 1 Užduotis
a = 5:2:34;
b = exp(a);
c = a./b;
d = c';
disp(d)

% 2 Užduotis
A = [pi/2, 3i; log(2), 2*pi];
B = [exp(A(1,1)), exp(A(1,2))];
C = [A; B];
rowSums = sum(C, 2);
disp(C)
disp(rowSums)

% 3 Užduotis
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
