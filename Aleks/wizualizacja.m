% skrypt generujujący macierze wizualizujące zbieżność metody Newtona 
% w zależności od przybliżenia początkowego x_0

close all

A = createMatrix(-1,1,-1,1,500,500);
d1 = 0.01;
limit_iter = 30;


%% najprostszy przykład
fprintf("Najprostszy przykład 1+cos(x)")

factors1 = [1, 1];
heatmap(factors1, A, d1, limit_iter);

%% większy przykład - przykład 2

factors2 = 1:6;
heatmap(factors2, A, d1, limit_iter);


%% przykład 3

factors3 = [-0.5, 10, 0.5];
heatmap(factors3, A, d1, limit_iter);

%% teraz weźmiemy sobie inne factors - losowe

rng('default')
random_factors = rand(100,1);
heatmap(random_factors, A, d1, limit_iter);

%% teraz cos co nie jest nigdy zbieżne

fprintf("wielomian postaci 1*cos(0*x) nie ma miejsc zerowych - jest stały")

factors5 = [1,0,0,0,0];
heatmap(factors5, A, d1, limit_iter);


%% większy przykład - przykład 6

factors6 = 1:100;
heatmap(factors6, A, d1, limit_iter);
