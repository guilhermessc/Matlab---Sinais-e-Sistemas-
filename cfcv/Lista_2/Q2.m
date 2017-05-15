img = imread('imagem.jpg');
gray = rgb2gray(img);
imshow(gray);

kernel = [0 0 0; 0 1 0; 0 0 0];
result = uint8(conv2(double(gray),double(kernel),'same'));
figure();
imshow(result);

% O kernel foi aplicado na imagem e o resultado é a mesma imagem, pois 
% aplicamos o kernel "identidade", perdemos apenas alguns pixels de borda.