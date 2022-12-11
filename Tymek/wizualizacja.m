% w tym skrypcie wykonamy kilka wizualizacji zbieżności przykładowych
% wielomianów zadanej postaci

factors1 = [1,2,3,4,5,6];

f1 = @(x) find_cos(x, factors1);

%przykladowe miejsce zerowe dla parametrów startowych x_1 = 1, x_2 = 0

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

factors7 = (100:-1:1)
f7 = @(x)find_cos(x, factors7);

visualise(@secant, f7, A, 100);

