function [w] = find_cos(z, factors)
% oblicz wartość wielomianu p(x) = sum_{k=1}^n a_n * cos(kx) za pomocą
% funckji goertzel.m
% params: z - wartość
% factors - wektor opisujący współczynniki a_i

z1 = exp(1i.*z);
z2 = exp(-1i.*z);
% dzielimy przez dwa, aby otrzymać odpowiednią postać
factors = factors/2;

w = goertzel(z1, factors) + goertzel(z2, factors);
end