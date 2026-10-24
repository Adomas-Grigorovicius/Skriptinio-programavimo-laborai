% Adomas Grigorovičius Pagrindinė/skriptas LD6 EDif-25/1 1var.

global x y          

x = 0:0.1:2*pi;    

sincos_fn        

whos             
whos global

plot(x, y, ':rs')
grid on
xlabel('x'); ylabel('y');
title('y = sin(x) + cos(x)')
