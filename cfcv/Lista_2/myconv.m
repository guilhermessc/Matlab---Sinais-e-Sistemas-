%% myconv: function description
% Essa função recebe dois argumentos, a imagem e o kernel e faz a convolução
% unidimensional e retorna o resultado.
function y = myconv(img, kernel)
	inv_kernel = [1:length(kernel)] .* 0;
	
	inv_kernel(1) = kernel(length(kernel));
	for i = 2:length(kernel)
		inv_kernel(i) = kernel(length(kernel)-(i-1));
	end

	for i = 1:(length(img)-length(kernel)+1)
		soma = 0;
		for j = 0:(length(kernel)-1)
			soma = soma + img(i+j)*inv_kernel(j+1);
		end
		img(i) = soma;
	end
	y = img;
end