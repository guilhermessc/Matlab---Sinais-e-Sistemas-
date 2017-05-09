% function [edge_all, gray, edge_im_vert, edge_im_horiz] = edges(im)
function edge_all = edges(gray_im)

	x = [1, 2, 1; 0,0,0; -1, -2, -1];

	edge_im_vert = conv2(gray_im, x, 'same');
	edge_im_horiz = conv2(gray_im, x', 'same');

	edge_all = sqrt(edge_im_horiz.^2 + edge_im_vert.^2);

end