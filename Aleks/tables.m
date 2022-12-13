% Skrypt do  testów zbieżności przykładowych wielomianów zadanej postaci.

% w każdym z przykładów:
% * wynik to przybliżone miejsce zerowe
% * iter to liczba iteracji potrzebnych do znalezienia wyniku
% * ans to wartość funkcji z przykładu dla argumentu x = wynik,
% czyli wartość funkcji dla przybliżonego miejsca zerowego (powinna być
% jak najbardziej zbliżona do zera)

%% przykład 7
factors7 = [2,1,3,7];
f7 = @(x)find_cos(factors7, x);

[wynik, iter] = Newton(factors7, 1, 10^(-16), 10000)
f7(wynik)

%% przykład 8 - tak naprawde to przykład 1, tylko, że porównanie dla większej liczby iteracji
factors8 = [1,2,3,4,5,6];
f8 = @(x) find_cos(factors8, x);

[wynik, iter] = Newton(factors8, 10^(-7), 10^(-16), 10^9)
f8(wynik)

%% przykład 8.1
[wynik, iter] = Newton(factors8, 1i*0.9, 10^(-16), 10^6)
f8(wynik)

%% przykład 9 
factors9 = [-1, 1000];
f9 = @(x)find_cos(factors9, x);

[wynik, iter] = Newton(factors9, 1, 10^(-16), 100000)
f9(wynik)

%% przykład 10 
factors10 = [-3, 1, 1, 1];
f10 = @(x)find_cos(factors10, x);

[wynik, iter] = Newton(factors10, 2, 10^(-16), 1000)
f10(wynik)

%% przykład 11
factors11 = zeros(100, 1);
factors11(2) = -1;
factors11(3) = -1;
factors11(100) = 1;
f11 = @(x)find_cos(factors11, x);

[wynik, iter] = Newton(factors11, 3, 10^(-15), 1000)
f11(wynik)

%% przykład 12
factors12 = zeros(200, 1);
factors12(200) = 10^(-10);
f12 = @(x)find_cos(factors12, x);

[wynik, iter] = Newton(factors12, 5, 10^(-15), 100000)
f12(wynik)

%% przykład 13
factors13 = [1.0341, 1, 0, 0, 0, 0, 0, 0, 0.1];
f13 = @(x)find_cos(factors13, x);

[wynik, iter] = Newton(factors13, 25, 10^(-16), 100000)
f13(wynik)

%% przykład 14
factors14 = zeros(201, 1);
factors14(3) = 1;
factors14(21) = 1;
factors14(201) = 1;
f14 = @(x)find_cos(factors14, x);

[wynik, iter] = Newton(factors14, 0.1, 10^(-16), 100000)
f14(wynik)

%% przykład 15
factors15 = zeros(11, 1);
factors15(2) = exp(1);
factors15(11) = -10;
f15 = @(x)find_cos(factors15, x);

[wynik, iter] = Newton(factors15, 1, 10^(-16), 100000)
f15(wynik)


%% przykład 16
factors16 = zeros(11, 1);
factors16(1) = exp(1);
factors16(2) = pi;
factors16(11) = 1/pi;
f16 = @(x)find_cos(factors16, x);

[wynik, iter] = Newton(factors16, 1, 10^(-16), 1000)
f16(wynik)

%% przykład 17
factors17 = zeros(11, 1);
factors17(11) = 10^(-10);
f17 = @(x)find_cos(factors17, x);

[wynik, iter] = Newton(factors17, 1, 10^(-16), 1000)
f17(wynik)

%% przykład 18
factors18 = zeros(201, 1);
factors18(1) = 2;
factors18(2) = 1;
factors18(3) = 1;
factors18(4) = 1;
factors18(201) = 1;
f18 = @(x)find_cos(factors18, x);

[wynik, iter] = Newton(factors18, 1, 10^(-16), 100000)
f18(wynik)
