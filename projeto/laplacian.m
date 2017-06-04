%% laplacian: function description
function l = laplacian(gray_img, k, sig)

	gray_img = gaussian(gray_img, 5, 1.4);

	kernel = 	[-1, -1, -1;
				 -1,  8, -1;
				 -1, -1, -1];
				 
	l = convol(gray_img, kernel);


	% kernel = [1, 2, 1; 0,0,0; -1, -2, -1];

	% edge_im_vert = double (convol(gray_img, kernel));		% first derivative
	% edge_im_vert = double (convol(edge_im_vert, kernel));	% second derivative

	% edge_im_horiz = double (convol(gray_img, kernel'));			% first derivative
	% edge_im_horiz = double (convol(edge_im_horiz, kernel'));	% second derivative

	% l = sqrt(edge_im_horiz.^2 + edge_im_vert.^2);

end
