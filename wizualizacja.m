% w tym skrypcie wykonamy kilka wizualizacji zbieżności przykładowych
% wielomianów zadanej postaci

factors1 = [1,2,3,4,5,6];

f1 = @(x) find_cos(x, factors1);

%przykladowe miejsce zerowe dla parametrów startowych x_1 = 1, x_2 = 0

fprintf("Przykładowe miejsce zerowe dla wielomianu ze współczynnikami: ")
disp(factors1)
[x, steps] = secant(f1, 1, 0, 10^(-10), 10^3);
fprintf("oraz precyzją 10e-10: %f do takiego rezultatu doszliśmy w %d krokach", x, steps)


%% teraz czas na troche wizualizacji zbieżności

% dla wielomianu z poprzedniego przykładu zwizualizujemy zbieżność dla
% różnych wartości startowych

% przyjmujemy, że drugi miejsce startowe to 0 

A = createMatrix(-1,1,-1,1,500,500);
B1 = matrixOfIterations(@secant, f1, A, 0, 0.01, 10);

fprintf("heatmapa zbieżności dla liczb zespolonych od -1-i do 1+i i dokładności 0.01")
imagesc(B1)

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




