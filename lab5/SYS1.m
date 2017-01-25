function [y] = SYS1(x)
s = zeros(2,1);
[l,c] = size(x);
y = zeros(1,c);

A = [0 0; 1 0];
B = [1 0]';
C = [0 1];
D = 0;

for n = 1:c
    s = A*s + B*x(n);
    y(n) = C*s + D*x(n);
end

end

