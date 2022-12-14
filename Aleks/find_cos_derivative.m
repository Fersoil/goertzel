function [w] = find_cos_derivative(factors, z)
% funkcja pozwala znaleźć pochodną wielomianu
% p(x) = sum_{k=1}^n a_k * cos(kx)

if not(iscolumn(factors))
    factors = factors';
end


for i = 0:length(factors)-1
    factors(i+1) = factors(i+1) * i;
end

w = find_sin(factors, z);
w = -w;
end