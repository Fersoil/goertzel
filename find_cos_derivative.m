function [w] = find_cos_derivative(factors, z)
%FIND_COS_DW Summary of this function goes here
%   Detailed explanation goes here
if not(iscolumn(factors))
    factors = factors';
end


for i = 0:length(factors)-1
    factors(i+1) = factors(i+1) * i;
end

w = find_sin(factors, z);
w = -w;
end