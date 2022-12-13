function [result] = goertzelPolynomial(factors, z)
  % funkcja zwraca przybliżenie wartości wielomianu
  % przy użyciu algorytmu Goertzela
  x = real(z);
  y = imag(z);
  
  p = 2*x;
  q = -(x^2 + y^2);
  
  N = length(factors);
  b = zeros(N+1);
  
  b(N) = factors(N);
  
  for n = N-1:-1:1
      b(n) = factors(n) + p * b(n+1) + q * b(n+2);
  end
  
  u = factors(1) + x * b(2) + q * b(3);
  v = y * b(2);
  result = u + 1i * v;
  end