%% thresholding: function description
function y = thresholding(gray_img)

	[Th_i, Th_s] = get_limits(gray_img); 

	aux = gray_img;

	aux(aux < Th_i) = 0;
	aux(aux >= Th_i & aux < Th_s) = 1;
	aux(aux >= Th_s) = 2;

	aux_max = aux;
	aux_max(aux_max < 2) = 0;

	kernel = [1, 1, 1; 1, 0, 1; 1, 1, 1];

	strong_neighbor = convol(aux_max, kernel);
	to_keep = aux .* strong_neighbor + aux_max;
	to_keep(to_keep > 0) = 1;

	y = gray_img.*to_keep;

end
