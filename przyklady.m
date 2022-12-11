% przykłady

factors = 1:20;

f = @(x)find_cos(x, factors);

x_0 = secant(f, 0, 1)
f(x_0)

x_0 = secant(f, -1, 1)
f(x_0)


x_0 = secant(f, -3, 1)
f(x_0)


rng('default')
r1 = rand(100,1);
f_r1 = @(x)find_cos(x, r1)

A = createMatrix(-1, 1, -1, 1, 2000, 2000);
B = matrixOfIterations(@secant, f_r1, A);
imagesc(B)