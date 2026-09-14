% Adomas Grigorovičius LD1 2026-09-14 EDif-25/1

x = 1:32;
y = x.^2;

plot(x, y, 'o-r',x,y/3,'xb')
title('Dvi funkcijos')
xlabel("X-ai")
ylabel('F_1 [-0-] | F_2 [-x-]')

help linspace;
help size;
help max;

N = 1;
V = N+1:0.5:N+4;
A = [N N+1 N+2; N+3 N+4 N+5; N+6 N+7 N+8];
Aa = A(3,2);
Ab = A(2:3,1:2);
Ac = A([1 3],[1 3]);
V2 = V(1:3);
A2 = [A V2'];
