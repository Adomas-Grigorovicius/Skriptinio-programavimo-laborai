% Adomas Grigorovičius LD4 PAPILDOMA 2026-10-11 EDif-25/1 1var.

x = linspace(-1,1,40);
y = x;
[X,Y] = meshgrid(x,y);
Z = 1-(X.^2+Y.^2);

modes = {'flat','interp','faceted'};

figure
for k = 1:3
    subplot(1,3,k)
    surf(X,Y,Z)
    shading(modes{k})
    colormap(jet)
    axis tight
    grid on
    xlabel('x')
    ylabel('y')
    zlabel('z')
    title(['shading ' modes{k}])
end
