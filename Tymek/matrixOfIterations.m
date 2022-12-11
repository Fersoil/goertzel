function [B] = matrixOfIterations(approx_func, func, A, x2, eps, max_iter)
%matrixOfIterations zwraca macierz B oznaczającą liczbę iteracji potrzebną do
% osiągnięcia miejsca zerowego dla danego miejsca w macierzy A

% to znaczy, jeżeli na miejscu (i, j) w macierzy A znajduje się liczba x, 
% to w miejscu (i, j) w macierzy B będzie znajdować się liczba iteracji
% potrzebnych do znalezienia miejsca zerowego, gdzie punkt startowy to x
% (drugi punkt startowy jest podany jako x2)


% ustawiamy domyślne wartości startowe funkcji
if nargin <= 4
    x2 = 0;
end
if nargin <= 5
    eps = 0.01;
end
if nargin <= 6
    max_iter = 30;
end

[n,m] = size(A);
B = zeros(n,m);

for i=1:n
    for j=1:m
        [x_0,iter] = approx_func(func, A(i,j),  x2, eps, max_iter);
        B(i,j) = iter;
    end
end

end