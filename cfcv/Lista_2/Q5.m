img = imread('imagem.jpg');
gray = rgb2gray(img);
imshow(gray);

%kernel = (1/11) .* [0 2 0; 2 3 2; 0 2 0]; -> teste
kernel = (1/15) .* [1 2 1; 1 3 1; 1 2 1];
result = uint8(conv2(double(gray),double(kernel),'same'));
%result = uint8(myconv2(gray,kernel));
figure();
imshow(result);

% Com esse kernel para cada pixel ele pega uma média dos pixels na sua vizinhança e soma
% Dessa forma ele escurece regioẽs mais escuras e embranquece as regiões mais claras
% Fazenco com que as transições fiquem mais bruscas, ou seja, mais nítido.