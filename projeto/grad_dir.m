%% functionname: function description
function theta = grad_dir(gray_im)

	x = [1, 2, 1; 0,0,0; -1, -2, -1];

	edge_im_vert = double (convol(gray_im, x));
	edge_im_horiz = double (convol(gray_im, x'));

	theta = atan(edge_im_vert ./ edge_im_horiz);

end