function [w] = find_cos(z, factors)
% oblicz wartość wielomianu p(x) = sum_{k=1}^n a_n * cos(kx) za pomocą
% funckji goertzel.m

z1 = exp(1i.*z);
z2 = exp(-1i.*z);

w = goertzel(z1, factors)/2 + goertzel(z2, factors)/2;
end