function [B] = visualiseParabolMethod(factors, A, eps, max_iter)
%funkcja wykonuje piękną heatmape wizualizującą zbieżność
%metody parabol dla wielomianu p(x) = sum_{k=0}^n a_k * cos(kx) 
%i zadanych parametrów 

% factors - współczynniki a_k
% A - macierz zespolonych wartości startowych x_1 z których rozpoczynamy
% poszukiwania miejsca zerowego
% eps - pożądany maksymalny błąd przybliżenia
% max_iter - maksymalna liczba iteracji

% ustawiamy domyślne wartości parametrów funkcji
if nargin <= 3
    max_iter = 30;
end
if nargin <= 2
    eps = 0.01;
end

B = parabolMatrixOfIterations(factors, A, max_iter, eps);

figure()
hold on

% ośki
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
title("Wizualizacja szybkości zbieżności metody parabol")

end