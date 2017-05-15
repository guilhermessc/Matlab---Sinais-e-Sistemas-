img = imread('imagem.jpg');
gray = rgb2gray(img);
imshow(gray);

kernel = (1/9) .* [1 1 1; 1 1 1; 1 1 1];
result = uint8(conv2(double(gray),double(kernel),'same'));
figure();
imshow(result);

% Aplicamos o kernel na imagem e a imagem retornada fica um pouco embassada. 
% Pois Aplicamos um filtro. Após a convolução o pixel resultante será a média 
% dos pixels a sua volta.