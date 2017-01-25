function y = processa_sinal(x, a, b)
%PROCESSA_SINAL Summary of this function goes here
%   Detailed explanation goes here
    t = size(x)
    y = zeros(t);
    for i = 1:t(1)
        y(i,1) = x(i,1)*a + b;
    end
end

