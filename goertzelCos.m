function [result] = goertzelCos(a, t)
z = cos(t) + 1i * sin(t);
result = real(goertzelPolynomial(a, z));
end