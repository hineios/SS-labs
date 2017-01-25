function [y] = Sistema1(x, n, a)
	[l,c] = size(x);
	y = zeros(l, c+n);
    
    for j=1:1:l
        for i=1:1:c
            y(j,i) = x(j,i);
        end
        for i = n+1:1:c+n
            y(j,i) = y(j,i) + a*x(j,i-n);
        end
    end
end