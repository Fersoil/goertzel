function [B] = heatmap(factors, A, d1, limit_iter)
% funkcja generuje 'heatmapę' czyli mapę kolorów, gdzie kolor zależy 
% od wartości w danym wierszu i kolumnie macierzy
% im mniejsza wartość tym kolor bardziej zbliżony do granatowego,
% im mniejsza wartość tym kolor bardziej zbliżony do żółtego


% ustawiamy domyślne wartości startowe funkcji
if nargin <= 3
    limit_iter = 30;
end
if nargin <= 2
    d1 = 0.01;
end

B = MatrixOfIterations(factors, A, d1, limit_iter);

figure()
hold on

% osie
[m, n] = size(A);

minR = real(A(1,1));
maxR = real(A(m, n));

maxI = imag(A(1,1));
minI = imag(A(m, n));

xlabel("Re(x)")
ylabel("Im(x)")

x = [minR maxR];
y = [minI maxI];

xlim([minR, maxR])
ylim([minI, maxI])

% obrazek

imagesc(x, y, B)
colorbar
clim([0 30])
title("Wizualizacja szybkości zbieżności metody Newtona")




end