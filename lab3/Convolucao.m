function [z] = Convolucao(x, y)

len = length(x);
z = zeros(len, 1);

for n = 1 : 1 : len
  z(n) = x(n) * y(n);
end