function [estado_seg, saida] = Actualiza(estado, entrada)

estado_seg = 'nulo';
saida = 'nulo';

switch estado
    case '(dag)'
        switch entrada
            case 'reage'
                estado_seg = '(ebi)';
                saida = '1';
            otherwise
                estado_seg = estado;
                saida = 'nulo';
        end
    case '(ebh)'
        switch entrada
            case 'reage'
                estado_seg = '(ecg)';
                saida = '1';
            otherwise
                estado_seg = estado;
                saida = {'nulo'};
        end
    case '(ebi)'
        switch entrada
            case 'reage'
                estado_seg = '(ecg)';
                saida = '0';
            otherwise
                estado_seg = estado;
                saida = {'nulo'};
        end
    case '(ecg)'
        switch entrada
            case 'reage'
                estado_seg = '(ebh)';
                saida = '1';
            otherwise
                estado_seg = estado;
                saida = {'nulo'};
        end
end