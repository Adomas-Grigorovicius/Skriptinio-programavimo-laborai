function C = farenh2cels(F)
% FARENH2CELS Perskaičiuoja temperatūrą iš Farenheito į Celsijaus skalę.
%
%   C = FARENH2CELS(F)
%
%   Įvesties kintamasis:
%       F - temperatūra Farenheito laipsniais (skaičius, vektorius ar matrica)
%
%   Išvesties kintamasis:
%       C - temperatūra Celsijaus laipsniais (tokio pat dydžio kaip F)
%
%   Formulė: C = 5*(F - 32)/9
%
%   Pavyzdys:
%       C = farenh2cels(212)        % grąžina 100
%       C = farenh2cels([32 50 98.6])

C = 5*(F - 32)/9;
end

% Adomas Grigorovičius Pagrindinė/ 1 Užduotis LD6 EDif-25/1 1var.
