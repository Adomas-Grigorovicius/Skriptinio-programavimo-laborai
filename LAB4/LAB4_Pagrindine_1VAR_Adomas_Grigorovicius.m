% Adomas Grigorovičius LD4 2026-10-11 EDif-25/1 1var.
%a
theta = linspace(0,2*pi,60);
r = linspace(0,1,30);
[T,R] = meshgrid(theta,r);
X = R.*cos(T);
Y = R.*sin(T);
Z = 1-2*X.^2-3*Y.^2;

figure
h = surf(X,Y,Z);
shading interp
colormap(jet)
colorbar
rotate(h,[0 0 1],45,[0 0 0])
axis tight
grid on
xlabel('x')
ylabel('y')
zlabel('f(x,y)')
title('f(x,y)=1-2x^2-3y^2, pasuktas 45^\circ kampu')

%b
x = linspace(-2,2,100);
y = x;
[X,Y] = meshgrid(x,y);
S = abs(X+Y);
Z = sin(S/20).*exp(-S);

figure
h = surf(X,Y,Z);
shading interp
colormap(parula)
colorbar
rotate(h,[0 0 1],60,[0 0 0])
axis tight
grid on
xlabel('x')
ylabel('y')
zlabel('f(x,y)')
title('f(x,y)=sin(|x+y|/20)e^{-|x+y|}, pasuktas 60^\circ kampu')

