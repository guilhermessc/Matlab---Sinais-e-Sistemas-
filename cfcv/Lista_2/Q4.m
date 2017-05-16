img = imread('imagem.jpg');
gray = rgb2gray(img);
imshow(gray);

kernel = [-1 0 1; -2 0 2; -1 0 1];
%result = uint8(myconv2(gray,kernel));
result = uint8(conv2(double(gray),double(kernel),'same'));
figure();
imshow(result);

% Aplicamos o kernel na imagem e observamos que o resultado foram as bordas 
% da imagem. Nesse caso o kernel irá pegar a variação vertical da imagem, 
% ou seja, as bordas verticais.