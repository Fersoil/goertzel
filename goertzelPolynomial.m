function [result] = goertzelPolynomial(a, z)
  %zwraca przybliżenie wartości wielomianu wg algorytmu goertzela
  x = real(z);
  y = imag(z);
  
  p = 2*x;
  q = -(x^2 + y^2);
  
  N = length(a);
  b = zeros(N+1);
  
  b(N) = a(N);
  
  for n = N-1:-1:1
      b(n) = a(n) + p * b(n+1) + q * b(n+2);
  end
  
  u = a(1) + x * b(2) + q * b(3);
  v = y * b(2);
  result = u + 1i * v;
  end