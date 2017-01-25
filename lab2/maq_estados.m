function [estado_seg, saida] = maq_estados(estado_actual, entrada)
% Recebe o estado actual da máquina e o input,
% devolve o próximo estado e a saída
   estado_seg = 'nulo';
   saida = 'nulo';

    switch estado_actual
        case 'inicial'
            switch entrada
                case '1'
                    estado_seg = 'silencio';
                    saida = 1;
                case '2'
                    estado_seg = 'ruido';
                    saida =  2;
                case '3'
                    estado_seg = 'fala';
                    saida = 3;
                otherwise
                    
            end
        case 'silencio'
            switch entrada
                case '1'
                    estado_seg = 'silencio';
                    saida = '0';
                case '2'
                    estado_seg = 'ruido';
                    saida =  2;
                case '3'
                    estado_seg = 'fala';
                    saida = 3;
            end
        case 'fala'
            switch entrada
                case '1'
                    estado_seg = 'silencio';
                    saida = 1;
                case '2'
                    estado_seg = 'ruido';
                    saida =  2;
                case '3'
                    estado_seg = 'fala';
                    saida = 0;
            end
        case 'ruido'
            switch entrada
                case '1'
                    estado_seg = 'silencio';
                    saida = 1;
                case '2'
                    estado_seg = 'ruido';
                    saida = 0;
                case '3'
                    estado_seg = 'fala';
                    saida = 3;
            end
        otherwise
    end
end

