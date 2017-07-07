%% laplacian: function description
function l = laplacian(gray_img, k, sig)

	gray_img = gaussian(gray_img, 5, 1.4);

	% kernel = 	[-1, -1, -1;
	% 			 -1,  8, -1;
	% 			 -1, -1, -1];

	len = 2*k + 1;
	kernel = zeros(len);

	for x = [1:len]
		for y = [1:len]
			kernel(x, y) = (-1/(pi*sig^4))*(1-((x-(k+1))^2 + (y-(k+1))^2)/(2*sig^2))*exp(-((x-(k+1))^2 + (y-(k+1))^2)/(2*sig^2));
		end
	end

	kernel = kernel/abs(sum(sum(kernel)));
				 
	l = convol(gray_img, kernel);


	% kernel = [1, 2, 1; 0,0,0; -1, -2, -1];

	% edge_im_vert = double (convol(gray_img, kernel));		% first derivative
	% edge_im_vert = double (convol(edge_im_vert, kernel));	% second derivative

	% edge_im_horiz = double (convol(gray_img, kernel'));			% first derivative
	% edge_im_horiz = double (convol(edge_im_horiz, kernel'));	% second derivative

	% l = sqrt(edge_im_horiz.^2 + edge_im_vert.^2);

end
