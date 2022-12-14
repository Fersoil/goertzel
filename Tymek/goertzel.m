function [W] = goertzel(z, factors)
% funkcja zwraca przybliżoną wartość wielomianu o współczynnikach factors
% za pomocą algorytmu Goertzela
% z - argument dla którego ma zostać wyznaczona wartość wielomianu - liczba
% zespolona
% factors - współczynniki wielomianu

%%

% upewniamy się że współczynniki mają odpowiedni format, tzn są wektorem
% pionowym
if not(iscolumn(factors))
    factors = factors';
end

x = real(z);
y = imag(z);

N = length(factors);

p = 2*x;
q = -(x^2 + y^2);

b = zeros(N+1, 1);

b(N) = factors(N);

for n = N-1:-1:1
    b(n) = factors(n) + p*b(n+1) + q*b(n+2);
end

u = factors(1) + x*b(2) + q*b(3);
v = y * b(2);

W = u + 1i*v;
end