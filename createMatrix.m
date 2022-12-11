function [A] = createMatrix(a_1, a_2, b_1, b_2, n, m)
%createMatrix funkcja zwraca macierz użyteczną do wizualizacji zbieżności -
%swoją konstrukcją przypomina rozmieszczenie liczb na płaszczyznie

% funkcja zwraca macierz n na m, która zawiera liczby równo rozdzielone od
% a_1 + i*b_1 aż do a_2 + i*b_2 - analogicznie do linspace
A = zeros(n,m);

for i = 1:n
    for j = 1:m
        A(i, j) = a_1 + (i-1)*(a_2 - a_1)/(n-1) + 1i*(b_1 + (j-1)*(b_2 - b_1)/(m-1));
    end
end

end