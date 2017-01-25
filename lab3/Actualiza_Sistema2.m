function [a ,y] = Actualiza_Sistema2(s, x)
A = diag(diag(eye(41),0),-1);
A(1, 42) = -0.5;

B = zeros(42, 1);
B(1, 1) = 1;

C = zeros(1, 42);
C(1 ,42) = -0.5;

D = 1;

a = A*s + B*x;
y = C*s + D*x;



end

