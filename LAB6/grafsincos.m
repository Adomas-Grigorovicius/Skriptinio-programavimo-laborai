function varargout = grafsincos(x)
% GRAFSINCOS Skaiciuoja vektoriaus-eilutes sin ir cos reiksmes.
%
%   grafsincos(x)         - nieko negrazina, nubraizo sin(x) ir cos(x) grafikus
%   S = grafsincos(x)     - grazina tik S = sin(x), grafiko nebraizo
%   [S,C] = grafsincos(x) - grazina S = sin(x) ir C = cos(x), grafiko nebraizo
%
%   Ivesties kintamasis:
%       x - vektorius-eilute (pvz., 0:0.1:2*pi)
%
%   Pavyzdziai:
%       grafsincos(0:0.1:2*pi)
%       S = grafsincos([0 pi/2 pi])
%       [S,C] = grafsincos(0:0.5:3)

if nargin ~= 1
    error('grafsincos: reikia lygiai vieno ivesties argumento (vektoriaus-eilutes).');
end
if ~isnumeric(x) || ~isvector(x) || size(x,1) ~= 1
    error('grafsincos: argumentas turi buti vektorius-eilute.');
end
if nargout > 2
    error('grafsincos: galima grazinti ne daugiau kaip 2 kintamuosius.');
end

S = sin(x);
C = cos(x);

if nargout == 0
    plot(x, S, 'b-', x, C, 'r--')
    grid on
    legend('sin(x)', 'cos(x)')
    xlabel('x'); ylabel('y');
    title('sin(x) ir cos(x)')
else
    varargout{1} = S;
    if nargout == 2
        varargout{2} = C;
    end
end
end
% Adomas Grigorovičius Papildoma LD6 EDif-25/1 1var.
