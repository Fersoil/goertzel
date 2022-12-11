function [w] = find_cos(factors, z)
% funkcja oblicza wartość wielomianu p(x) = sum_{k=1}^n a_n * cos(kx) 
% za pomocą funckji goertzel.m
% parametry
% z - argumentu funkcji, w którym wyznaczamy wartość wielomianu - liczba
% zespolona
% factors - wektor opisujący współczynniki a_i

%% funkcja wykorzystuje własność cos(x) = 0.5exp(ix) + 0.5exp(-ix)


% upewniamy się że współczynniki mają odpowiedni format, tzn są wektorem
% pionowym
if not(iscolumn(factors))
    factors = factors';
end

z1 = exp(1i.*z);
z2 = exp(-1i.*z);
% dzielimy przez dwa, aby otrzymać odpowiednią postać
factors = factors/2;

w = goertzelPolynomial(factors, z1) + goertzelPolynomial(factors, z2);
end