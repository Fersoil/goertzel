function [B] = visualise(approx_func, func, A)
%visualise funkcja wykonuje piękną heatmape wizualizującą zbieżność podanej
%metody approx_func dla funkcji func, która jest wykonywana dla danych z
%macierzy A

% approx_func - funkcja szukająca miejsca zerowego
% func - funkcja której miejsca zerowego szukamy
% A - macierz zespolonych wartości startowych x_1 z których rozpoczynamy
% poszukiwania miejsca zerowego (dla metody siecznych domyślny drugi punkt
% startowy to 0)

B = matrixOfIterations(approx_func, func, A);

figure()
imagesc(B)



end