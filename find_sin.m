function [w] = find_sin(factors,z)
z1 = exp(1i.*z);
z2 = exp(-1i.*z);
% dzielimy przez dwa, aby otrzymać odpowiednią postać
factors = factors/2 * i;

w = goertzelPolynomial(factors, z2) - goertzelPolynomial(factors, z1);
end