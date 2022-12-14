function [x_0, iter] = parabolMethod(a, x, eps, max_iter)
% zwraca przyblizenie miejsca zerowego funkcji wielomianu
% p(z) = sum_{k=0}^n a_k * z^k
% metoda parabol dla zadanych
% parametrów

% a - współczynniki a_k
% x - punkt startowy
% eps - pożądany maksymalny błąd przybliżenia
% max_iter - maksymalna liczba iteracji

% algorytm szukania miejsca zerowego z wykładu

steps = 0;
while(steps < max_iter)
steps = steps + 1;
% obliczamy f(x) oraz pierwsza i druga pochodna
f_x = find_cos(a, x);
f_x_prim = find_cos_dw(a, x);
f_x_bis = find_cos_ddw(a, x);

% rozwiazujemy rownanie 0 = f_x + f_x_prim * y + 1/2 f_x_bis * y^2  wzgledem y

w1 = 1/2 * f_x_bis;
w2 = f_x_prim;
w3 = f_x;

% w razie wystąpienia niepożądanych wyników na którymś z etapów obliczeń 
% stwierdzamy że algorytm nie jest zbieżny
if isnan(w1) || isinf(w1) || isnan(w2) || isinf(w2) || isnan(w3) || isinf(w3)
    x_0 = NaN;
    iter = max_iter+1;
    return;
end

r = roots([w1 w2 w3]);

if isempty(r) 
    x_0 = NaN;
    iter = max_iter + 1;
    return;
end

% wybieramy ten pierwiastek rownania kwadratowego, ktory jest blizszy x
y = r(1);
if(abs(r(1) - x) > abs(r(2) - x))
    y = r(2);
end

% obliczamy kolejne przyblizenie miejsca zerowego
x = x + y;

% jesli osiagnelismy zadaną dokladnosc, zwracamy wynik
if(abs(y) < eps)
    x_0 = x;
    iter = steps;
    return;
end

end

x_0 = NaN;
iter = max_iter + 1;
end