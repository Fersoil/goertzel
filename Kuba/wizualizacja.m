close all

% parametry dla przykładów z macierzą obrazującą zbieżność
A = createMatrix(-1,1,-1,1,500,500);
eps = 0.01;
max_iter = 30;


%% 1 

visualiseParabolMethod([1 1], A, eps, max_iter);
%

%% 2

visualiseParabolMethod(1:6, A, eps, max_iter);
%

%% 3
visualiseParabolMethod([-1 1 1/2], A, eps, max_iter);

%

% 4

a = -1;
b = 1;
factors = (b-a).*rand(100,1) + a;
visualiseParabolMethod(factors, A, eps, max_iter);

% 5 cos co nie jest zb 
visualiseParabolMethod([1,0,0,0,0], A, eps, max_iter);

%% 6
visualiseParabolMethod(1:101, A, eps, max_iter);


% pozostałe przykłady

max_iter = 10^6;
eps = 10^(-16);

%% przykład 7
x = 1;

factors = [2,1,3,7];

[wynik, iter] = parabolMethod(factors, x, eps, max_iter);

fprintf('7 %d, iteracji: %d, f(x): %d \n', wynik, iter, find_cos(factors, wynik));

%% przykład 8 - tak naprawde to przykład 1, tylko, że porównanie dla większej liczby iteracji
% powiedzmy ze to jest interesujące

x = 10^(-7);
factors = [1 1];


[wynik, iter] = parabolMethod(factors, x, eps, max_iter);

fprintf('8 %d, iteracji: %d, f(x): %d \n \n', wynik, iter, find_cos(factors, wynik));

%% przykład 8.1 - tak naprawde to przykład 1, tylko, że porównanie dla większej liczby iteracji
% powiedzmy ze to jest interesujące

x = 1i*0.9;

[wynik, iter] = parabolMethod(factors, x, eps, max_iter);

fprintf('8.1 %d, iteracji: %d, f(x): %d \n \n', wynik, iter, find_cos(factors, wynik));

%% przykład 9 
% powiedzmy ze to jest interesujące

x = 4;
factors = [-1, 1000];

[wynik, iter] = parabolMethod(factors, x, eps, max_iter);

fprintf('9 %d, iteracji: %d, f(x): %d \n \n', wynik, iter, find_cos(factors, wynik));

%% przykład 10 
% powiedzmy ze to jest interesujące

x = 1i*0.9;

factors = [-3, 1, 1, 1];

[wynik, iter] = parabolMethod(factors, x, eps, max_iter);

fprintf('10 %d, iteracji: %d, f(x): %d \n \n', wynik, iter, find_cos(factors, wynik));


%% przykład 11
% powiedzmy ze to jest interesujące

x = 1;

factors = zeros(100, 1);
factors(2) = -1;
factors(3) = -1;
factors(100) = 1;

[wynik, iter] = parabolMethod(factors, x, eps, max_iter);

fprintf('11 %d, iteracji: %d, f(x): %d \n \n', wynik, iter, find_cos(factors, wynik));

%% przykład 12
% powiedzmy ze to jest interesujące

x = 5;
% tutaj factors1

factors = zeros(200, 1);
factors(200) = 10^(-10);

[wynik, iter] = parabolMethod(factors, x, eps, max_iter);

fprintf('12 %d, iteracji: %d, f(x): %d \n \n', wynik, iter, find_cos(factors, wynik));

%% przykład 13
% powiedzmy ze to jest interesujące

x = 25;

factors = [1.0341, 1, 0, 0, 0, 0, 0, 0, 0.1];

[wynik, iter] = parabolMethod(factors, x, eps, max_iter);

fprintf('13 %d , iteracji: %d, f(x): %d \n \n', wynik, iter, find_cos(factors, wynik));

%% przykład 14
% powiedzmy ze to jest interesujące

x = 0.1;

factors = zeros(201, 1);
factors(3) = 1;
factors(21) = 1;
factors(201) = 1;

[wynik, iter] = parabolMethod(factors, x, eps, max_iter);

fprintf('14 %d, iteracji: %d, f(x): %d \n \n', wynik, iter, find_cos(factors, wynik));

%% przykład 15
% powiedzmy ze to jest interesujące

x = 12;

factors = zeros(11, 1);
factors(2) = exp(1);
factors(11) = -10;

[wynik, iter] = parabolMethod(factors, x, eps, max_iter);

fprintf('15 %d, iteracji: %d, f(x): %d \n \n', wynik, iter, find_cos(factors, wynik));


%% przykład 16
% powiedzmy ze to jest interesujące

x = 1;

factors = zeros(11, 1);
factors(1) = exp(1);
factors(2) = pi;
factors(11) = 1/pi;

[wynik, iter] = parabolMethod(factors, x, eps, max_iter);

fprintf('16 %d, iteracji: %d, f(x): %d \n \n', wynik, iter, find_cos(factors, wynik));

%% przykład 17
% powiedzmy ze to jest interesujące

x = 1;

factors = zeros(11, 1);
factors(11) = 10^(-10);

[wynik, iter] = parabolMethod(factors, x, eps, max_iter);

fprintf('17 %d, iteracji: %d, f(x): %d \n \n', wynik, iter, find_cos(factors, wynik));

%% przykład 18
% powiedzmy ze to jest interesujące

x = 0;

factors = zeros(201, 1);
factors(1) = 2;
factors(2) = 1;
factors(3) = 1;
factors(4) = 1;
factors(201) = 1;

[wynik, iter] = parabolMethod(factors, x, eps, max_iter);

fprintf('18 %d, iteracji: %d, f(x): %d \n \n', wynik, iter, find_cos(factors, wynik));