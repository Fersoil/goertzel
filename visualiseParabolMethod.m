function [B] = visualiseParabolMethod(factors, A, eps, max_iter)
%visualise funkcja wykonuje piękną heatmape wizualizującą zbieżność podanej
%metody approx_func dla funkcji func, która jest wykonywana dla danych z
%macierzy A

% approx_func - funkcja szukająca miejsca zerowego
% func - funkcja której miejsca zerowego szukamy
% A - macierz zespolonych wartości startowych x_1 z których rozpoczynamy
% poszukiwania miejsca zerowego (dla metody siecznych domyślny drugi punkt
% startowy to 0)

% ustawiamy domyślne wartości startowe funkcji
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

minI = imag(A(1,1));
maxI = imag(A(m, n));

xlabel("Re(x)")
ylabel("Im(x)")

x = [minR maxR];
y = [minI maxI];

xlim([minR, maxR])
ylim([minI, maxI])

% obrazek

imagesc(x, y, B)
colorbar
title("Wizualizacja szybkości zbieżności")

end