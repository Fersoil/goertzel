% w tym skrypcie wykonamy kilka wizualizacji, a także testów zbieżności przykładowych
% wielomianów zadanej postaci.

% wybieramy parametry
A = createMatrix(-1,1,-1,1,500,500);


%% wykonamy 6 wizualizacji szybkości zbieżności wielomianów o danych
% współczynnikach w zależności od jednego z punktów startowych
% przyjmujemy, że drugi punkt startowy w tym przypadku to 0 - dla
% ułatwienia oraz elegancji obliczeń


%% 
factors1 = [1,2,3,4,5,6];

f1 = @(x) find_cos(x, factors1);

fprintf("Przykładowe miejsce zerowe dla wielomianu ze współczynnikami: ")
disp(factors1)
[x, steps] = secant(f1, 1, 0, 10^(-10), 10^3);
fprintf("oraz precyzją 10e-10: %f do takiego rezultatu doszliśmy w %d krokach\n", x, steps)

%% najbardziej podstawowe - przykład 1

factors1 = [1, 1];
f1 = @(x)find_cos(x, factors1);

visualise(@secant, f1, A);

%% większy przykład - przykład 2

factors2 = 1:6;
f2 = @(x)find_cos(x, factors2);

visualise(@secant, f2, A);

%% mniejszy przykład - przykład 3

factors3 = [-0.5, 10, 0.5];
f3 = @(x)find_cos(x, factors3);

visualise(@secant, f3, A);

%%  losowe współczynniki - przykład 4

rng('default')
factors4 = rand(100,1);

f4 = @(x)find_cos(x, factors4);

visualise(@secant, f4, A);

%% teraz cos co nie jest nigdy zbieżne - przykład 5

fprintf("wielomian postaci 1*cos(0*x) nie ma miejsc zerowych - jest stały")

factors5 = [1,0,0,0,0];

f5 = @(x) find_cos(x, factors5);

[x, steps] = secant(f5, 1, 0, 10^(-10), 10^3);

% teraz heatmapa

visualise(@secant, f5, A);


%% przykład 6

factors6 = 1:100;
f6 = @(x)find_cos(x, factors6);

visualise(@secant, f6, A);


%% przykład 7

factors7 = [2,1,3,7];
f7 = @(x)find_cos(x, factors7);

%visualise(@secant, f7, A, 100);

[wynik, iter] = secant(f7, 1, 0, 10^(-16), 10000)

f7(wynik)

%% przykład 8 - tak naprawde to przykład 1, tylko, że porównanie dla większej liczby iteracji
% powiedzmy ze to jest interesujące

x_1 = 10^(-8);
x_2 = 2*pi;
% tutaj factors1

[wynik, iter] = secant(f1, x_1, x_2, 10^(-16), 10^9)

f1(wynik)

%% przykład 9 - tak naprawde to przykład 1, tylko, że porównanie dla większej liczby iteracji
% powiedzmy ze to jest interesujące

x_1 = 1i;
% tutaj factors1

[wynik, iter] = secant(f1, 1, 0, 10^(-16), 10000)

f1(wynik)
