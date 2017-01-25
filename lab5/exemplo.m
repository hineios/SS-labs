close all

%% Exemplo
w = 0.01:0.001:1;
H = 1 + exp(-1i*w);

mag = abs(H);
figure, subplot(2,1,1), plot(mag)
fase = rad2deg(angle(H));
figure,  subplot(2,1,2), plot(fase)