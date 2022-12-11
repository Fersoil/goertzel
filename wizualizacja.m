close all

A = createMatrix(-1,1,-1,1,200,200);
eps = 0.01;
max_iter = 30;


%% teraz czas giga przykład

factors6 = 1:100;


fprintf("Teraz współczynnikami będzie wektor od -pi do pi z 1000 krokami: \n")

visualiseParabolMethod(factors6, A, eps, max_iter);
%

%% teraz czas na jeszcze większy przykład

factors5 = 1:75;


fprintf("Teraz współczynnikami będzie wektor od -pi do pi z 1000 krokami: \n")

visualiseParabolMethod(factors5, A, eps, max_iter);
%

%% teraz czas na większy przykład

factors4 = 1:50;


fprintf("Teraz współczynnikami będzie wektor od -pi do pi z 1000 krokami: \n")

visualiseParabolMethod(factors4, A, eps, max_iter);

%

% w tym skrypcie wykonamy kilka wizualizacji zbieżności przykładowych
% wielomianów zadanej postaci

factors1 = [1,2,3,4,5,6];

%przykladowe miejsce zerowe dla parametrów startowych x_1 = 1, x_2 = 0

fprintf("Przykładowe miejsce zerowe dla wielomianu ze współczynnikami: ")
disp(factors1)
[x, steps] = parabolMethod(factors1, 2, eps, max_iter);
fprintf("oraz precyzją 10e-10: %f do takiego rezultatu doszliśmy w %d krokach\n", x, steps)


%% teraz czas na troche wizualizacji zbieżności

% dla wielomianu z poprzedniego przykładu zwizualizujemy zbieżność dla
% różnych wartości startowych

fprintf("heatmapa zbieżności dla liczb zespolonych od -1-i do 1+i i dokładności 0.01")
visualiseParabolMethod(factors1, A, eps, max_iter);

%% teraz weźmiemy sobie inne factors

rng('default')
random_factors = rand(100,1);

visualiseParabolMethod(random_factors, A, eps, max_iter);


%% teraz cos co nie jest nigdy zbieżne

fprintf("wielomian postaci 1*cos(0*x) nie ma miejsc zerowych - jest stały")

factors3 = [1,0,0,0,0];

visualiseParabolMethod(factors3, A, eps, max_iter);


