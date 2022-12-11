close all

A = createMatrix(-1,1,-1,1,200,200);
d1 = 10^(-10);
limit_iter = 30;


%% teraz czas giga przykład

factors6 = 1:100;


fprintf("Teraz współczynnikami będzie wektor od -pi do pi z 1000 krokami: \n")

heatmap(factors6, A, d1, limit_iter);


%% teraz czas na jeszcze większy przykład

factors5 = 1:75;


fprintf("Teraz współczynnikami będzie wektor od -pi do pi z 1000 krokami: \n")

heatmap(factors5, A, d1, limit_iter);
%

%% teraz czas na większy przykład

factors4 = 1:50;


fprintf("Teraz współczynnikami będzie wektor od -pi do pi z 1000 krokami: \n")

heatmap(factors6, A, d1, limit_iter);

%

% w tym skrypcie wykonamy kilka wizualizacji zbieżności przykładowych
% wielomianów zadanej postaci

factors1 = [1,2,3,4,5,6];

%przykladowe miejsce zerowe dla parametrów startowych x_1 = 1, x_2 = 0

fprintf("Przykładowe miejsce zerowe dla wielomianu ze współczynnikami: ")
disp(factors1)
[x, steps] = Newton(factors1, 2, d1, limit_iter);
fprintf("oraz precyzją 10e-10: %f do takiego rezultatu doszliśmy w %d krokach\n", x, steps)


%% teraz czas na troche wizualizacji zbieżności

% dla wielomianu z poprzedniego przykładu zwizualizujemy zbieżność dla
% różnych wartości startowych

fprintf("heatmapa zbieżności dla liczb zespolonych od -1-i do 1+i i dokładności 0.01")
heatmap(factors1, A, d1, limit_iter);

%% teraz weźmiemy sobie inne factors

rng('default')
random_factors = rand(100,1);

heatmap(random_factors, A, d1, limit_iter);


%% teraz cos co nie jest nigdy zbieżne

fprintf("wielomian postaci 1*cos(0*x) nie ma miejsc zerowych - jest stały")

factors3 = [1,0,0,0,0];

heatmap(factors3, A, d1, limit_iter);

