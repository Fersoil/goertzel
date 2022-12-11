function [w] = find_cos_ddw(factors, z)
for i = 0:length(factors)-1
    factors(i+1) = factors(i+1) * i * i;
end


temp = find_cos(factors, z);

w = -temp;
end