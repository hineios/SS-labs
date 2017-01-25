function xi = impar(x,n)
%%Função adaptada de: 
%%%http://www.estv.ipv.pt/paginaspessoais/maeb/SPD/Teorico_Praticas_PDF/Guia%20TP1%20SPD%20-%20Sistemas%20e%20Sinais%20Discretos.pdf
    if any(imag(x) ~= 0)
        error('x não é uma sequência real');
    end
    m = -fliplr(n);
    m1 = min([m,n]);
    m2 = max([m,n]);
    m = m1:m2;
    nm = n(1)-m(1);
    n1 = 1:length(n);
    x1 = zeros(1,length(m));
    x1(n1+nm) = x;
    x = x1;
    xi = 0.5*(x - fliplr(x));