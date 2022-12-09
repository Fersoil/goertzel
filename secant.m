function [x_0] = secant(f, x1, x2, eps, max_iter)
% funkcja oblicza wartosc miejsca zerowego funkcji func
% w przedziale (a, b) 

% jezeli przedział jest podany na odwrót to odwaracamy go

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
x = zeros(max_iter+1, 1);

%fx = zeros(max_iter+1, 1); dla lepszego performancu

% ustalamy pierwsze dwa przybliżenia
x(1) = x1;
x(2) = x2;

while iter <= max_iter
    % jezeli przybliżenia są dostatecznie blisko siebie, to konczymy
    % dzialanie programu
    if abs(x(iter-1) - x(iter)) < eps
        x_0 = x(iter);
        return 
    end
    % liczymy kolejne przyblizenie miejsca zerowego
    fdiff = f(x(iter)) - f(x(iter-1));
    x(iter+1) = x(iter) - f(x(iter))*(x(iter) - x(iter-1))/fdiff;
    iter = iter + 1;
end
% jezeli doszlismy do tego miejsca to de facto nie znaleziono miejsca zerowego
disp("brak miejsca zerowego")
x_0 = x(iter);



end