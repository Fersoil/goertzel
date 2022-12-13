function [B] = MatrixOfIterations(factors, A, d1, limit_iter)
% funkcja zwraca macierz B, której elementy odpowiadają liczbie iteracji
% potrzebnej do przybliżenia miejsca zerowego wielomianu z przybliżeniem
% początkowym zaczerpniętym z macierzy A

% to znaczy, jeżeli na miejscu (i, j) w macierzy A znajduje się liczba x, 
% to w miejscu (i, j) w macierzy B będzie znajdować się liczba iteracji
% potrzebnych do znalezienia miejsca zerowego, gdzie punkt startowy to x


% ustawiamy domyślne wartości startowe funkcji
if nargin <= 3
    d1 = 0.01;
end
if nargin <= 2
    limit_iter = 30;
end

[n,m] = size(A);
B = zeros(n,m);

for i=1:n
    for j=1:m
        [~, iter] = Newton(factors, A(i,j), d1, limit_iter);
        B(i,j) = iter;
    end
end

end