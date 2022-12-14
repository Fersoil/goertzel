function [w] = find_sin(factors,z)
% funkcja oblicza wartość wielomianu p(x) = sum_{k=0}^n a_k * sin(kx) 
% za pomocą funkcji goertzelPolynomial.m
% parametry
% z - argumentu funkcji, w którym wyznaczamy wartość wielomianu - liczba
% zespolona
% factors - wektor opisujący współczynniki a_i

%% funkcja wykorzystuje własność sin(x) = i0.5exp(-ix) - i0.5exp(ix)

z1 = exp(1i.*z);
z2 = exp(-1i.*z);
% dzielimy przez dwa i mnożymy przez "i", aby otrzymać odpowiednią postać
factors = factors/2 * 1i;

w = goertzelPolynomial(factors, z2) - goertzelPolynomial(factors, z1);
end