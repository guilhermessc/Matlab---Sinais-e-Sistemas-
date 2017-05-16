%% functionname: function description
function y = convol(mat, krn)

	% 'invertendo' o kernel
	krn = krn';

	% extraindo as dimensões
	sz1 = size(mat);
	sz1_linhas = sz1 (1);
	sz1_colunas = sz1(2);
	
	sz2 = size(krn);
	sz2_linhas = sz2 (1);
	sz2_colunas = sz2(2);
	
	to_add_linha = floor(sz2_linhas/2);
	to_add_coluna = floor(sz2_colunas/2);

	% criando uma matriz auxiliar que envolve a pricipal com zeros
	tmp = zeros(4*max(max(sz1_linhas, sz2_colunas),max(sz2_linhas,sz1_colunas)));
	tmp = tmp([1:((2*to_add_linha)+sz1_linhas)], [1:((2*to_add_coluna)+sz1_colunas)]);
	tmp([(1+to_add_linha):(to_add_linha+sz1_linhas)], [(1+to_add_coluna):(to_add_coluna+sz1_colunas)]) = mat;


	y = mat*0;

	% convolução
	for (i = [1:sz1_colunas])
		for (j = [1:sz1_linhas])

			y(j, i) = sum(sum(tmp((j:j-1+sz2_linhas), (i:i-1+sz2_colunas)) .* krn));

		end
	end




end