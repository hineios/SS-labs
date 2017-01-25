function Mcoef = TDCos2(I)

for i = 1:size(I,1);
    Mcoef(i,:) = TDCos(I(i,:));
end
for i = 1:size(I,2);
    Mcoef(:,i) = TDCos(Mcoef(:,i));
end

end

% Função unidimensional
function B = TDCos(x)

if size(x,1)>1
    x=x';
end
M = length(x);
B(M) = 0;
m = 0:M-1;
B(1) = sum(sqrt(1/M)*x);
alpha_p = sqrt(2/M);
for p = 1:M-1,
    B(p+1) = sum(alpha_p*double(x).*cos(pi*(2*m+1)*p/(2*M)));
end
    
end
