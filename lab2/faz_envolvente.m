function [env_energia] = faz_envolvente(energia)

periodo = length(energia)/50;
env_energia = zeros(periodo, 1);

index = 1;

for i = 1:periodo-1
    media_periodo = 0;
    for j = 1:50
        media_periodo = media_periodo + energia(index);        
        index = index + 1;
    end
    env_energia(i) = media_periodo/50;
end
    

end

