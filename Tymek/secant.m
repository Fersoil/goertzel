function [x_0, iter] = secant(f, x1, x2, eps, max_iter)
% funkcja oblicza przybliżoną wartosc miejsca zerowego funkcji f
% metododą siecznych
% rozpoczynając dla parametrów startowych x1 i x2

% działanie funkcji jest zakończone z sukcesem jeżeli kolejne dwa
% przybliżenia nie różnią się o więcej niż eps lub porażką, jeżeli
% przekroczono maksymalną możliwą liczbę kroków

%% parametry funkcji
% f - funkcja z R w R
% x1, x2 - liczby rzeczywiste
% eps - wartość przybliżenia
% maksymalna liczba kroków

%% funkcja zwraca znalezione miejsce zerowe w przypadku sukcesu i 
% liczbę iteracji w jakiej je osiągnięto, bądź NaN i maksymalną liczbę
% iteracji + 1

% ustawiamy domyślne wartości startowe funkcji
if nargin <= 1
    x1 = 1;
    x2 = 2;
end

if nargin <= 3
    eps = 0.01;
end

if nargin <= 4
    max_iter = 100;
end

iter = 2;

% kolejne przybliżenia


%fx = zeros(max_iter+1, 1); opcja dla lepszego performancu

% ustalamy pierwsze dwa przybliżenia


if x1 == x2
    x_0 = NaN;
    iter = max_iter+1;
    return
end

while iter <= max_iter
    % jezeli przybliżenia są dostatecznie blisko siebie, to konczymy
    % dzialanie programu
    if abs(x2 - x1) < eps %&& abs(f(x(iter))) < eps
        x_0 = x2;
        return 
    end
    % liczymy kolejne przyblizenie miejsca zerowego
    fdiff = f(x2) - f(x1);
    prev = x2;
    x2 = x2 - f(x2)*(x2 - x1)/fdiff;
    x1 = prev;
    iter = iter + 1;
end
% jezeli doszlismy do tego miejsca to de facto nie znaleziono miejsca zerowego
% disp("brak miejsca zerowego")
x_0 = NaN;
iter = max_iter+1;
end