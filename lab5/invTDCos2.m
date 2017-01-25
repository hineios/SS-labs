function I = invTDCos2(Mcoef)

for i = 1:size(Mcoef,1);
    I(i,:) = invTDCos(Mcoef(i,:));
end
for i = 1:size(I,2);
    I(:,i) = invTDCos(I(:,i));
end

end

% Função unidimensional
function x = invTDCos(B)

if size(B,1)>1
    B=B';
end
M = length(B);
x(M) = 0;
p = 1:M-1;
alpha_p0= sqrt(1/M);
alpha_p = sqrt(2/M);
for m = 0:M-1,
    x(m+1) = alpha_p0*B(1) + sum(alpha_p*B(2:end).*cos(pi*(2*m+1)*p/(2*M)));
end

end