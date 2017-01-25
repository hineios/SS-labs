function [tamanho] = Compressao(nome,trunc)
RGB = imread(nome);
I = rgb2gray(RGB);
J = dct2(I);
%figure, imshow(log(abs(J)),[]), colormap(jet(64)), colorbar

J(abs(J) < trunc) = 0;
K = idct2(J);
s = strcat('TDC',int2str(trunc),nome);



imwrite(K,s,'png');
info = imfinfo(s);
tamanho = info.FileSize;
figure, imshow(K,[0 255])
r = strcat('Thereshold=',int2str(trunc),' Tamanho=',int2str(tamanho));
xlabel(r)
title(s);
end

