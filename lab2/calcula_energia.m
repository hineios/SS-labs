function [energia] = calcula_energia(som, amostras, amostras20)
% Existem 625 janelas de 20ms em 12.5s. Como se quer uma sobreposição de
% 50% essas janelas não chegam e, portanto, multiplica-se pelo dobro para
% resolver esse problema.
janelas = (amostras/amostras20)*2;
energia = zeros(janelas, 1);

som_index = 1;
for i = 1:janelas-1
    energia_janela = 0;
    for j = 1:amostras20
        energia_janela = energia_janela + som(som_index)^2;
        som_index = som_index + 1;
    end
    energia(i) = sqrt(energia_janela);
    % atraso 50%
    som_index = som_index - (amostras20/2);
end
end