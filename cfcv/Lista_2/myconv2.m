%% myconv2: function description
% Essa função recebe dois argumentos, a imagem e o kernel e faz a convolução
% bidimensional e retorna o resultado.
% OBS.: essa função assume que a matriz passada como o kernel será 3x3.
function y = myconv2(img,kernel)

	inv_kernel = inverte(kernel);
	
	[kernelX, kernelY] = size(inv_kernel);
	[imX, imY] = size(img);
	y = zeros(imX-kernelX+1,imY-kernelY+1);
	
	if kernelX ~= kernelY
		disp('Kernel deve ser uma matriz quadrática');
		exit();
	end

	k = 0;
	for i = 2:(imX-1)
		k = k + 1;
		z = 0;
		for j = 2:(imY-1)
			z = z + 1;
			y(k,z) = inv_kernel(1,1)*img(i-1,j-1)+inv_kernel(1,2)*img(i-1,j)+inv_kernel(1,3)*img(i-1,j+1)+inv_kernel(2,1)*img(i,j-1)+inv_kernel(2,2)*img(i,j)+inv_kernel(2,3)*img(i,j+1)+inv_kernel(3,1)*img(i+1,j-1)+inv_kernel(3,2)*img(i+1,j)+inv_kernel(3,3)*img(i+1,j+1);
		end
	end
end
