% w tym skrypcie wykonamy kilka wizualizacji zbieżności przykładowych
% wielomianów zadanej postaci

factors1 = [1,2,3,4,5,6];

f1 = @(x) find_cos(x, factors1);

%przykladowe miejsce zerowe dla parametrów startowych x_1 = 1, x_2 = 0

fprintf("Przykładowe miejsce zerowe dla wielomianu ze współczynnikami: ")
disp(factors1)
[x, steps] = secant(f1, 1, 0, 10^(-10), 10^3);
fprintf("oraz precyzją 10e-10: %f do takiego rezultatu doszliśmy w %d krokach\n", x, steps)


%% teraz czas na troche wizualizacji zbieżności

% dla wielomianu z poprzedniego przykładu zwizualizujemy zbieżność dla
% różnych wartości startowych

% przyjmujemy, że drugi miejsce startowe to 0 

A = createMatrix(-1,1,-1,1,500,500);

fprintf("heatmapa zbieżności dla liczb zespolonych od -1-i do 1+i i dokładności 0.01")
visualise(@secant, f1, A);

%% teraz weźmiemy sobie inne factors

rng('default')
random_factors = rand(100,1);
f2 = @(x)find_cos(x, random_factors);

visualise(@secant, f2, A)



%% teraz cos co nie jest nigdy zbieżne

fprintf("wielomian postaci 1*cos(0*x) nie ma miejsc zerowych - jest stały")

factors3 = [1,0,0,0,0];

f3 = @(x) find_cos(x, factors3);

%przykladowe miejsce zerowe dla parametrów startowych x_1 = 1, x_2 = 0

fprintf("Przykładowe miejsce zerowe dla wielomianu ze współczynnikami: ")
disp(factors1)
[x, steps] = secant(f3, 1, 0, 10^(-10), 10^3);
fprintf("oraz precyzją 10e-10: %f do takiego rezultatu doszliśmy w %d krokach\n", x, steps)

% teraz heatmapa

visualise(@secant, f3, A)

%% teraz czas na gigantyczny przykład

factors4 = linspace(-pi, pi, 1000);


fprintf("Teraz współczynnikami będzie wektor od -pi do pi z 1000 krokami: \n")
f4 = @(x) find_cos(x, factors4);

fprintf("wizualizacja zbieżności z drugim punktem startowym o wartości 1\n")

visualise(@secant, f4, A, 0.1);


