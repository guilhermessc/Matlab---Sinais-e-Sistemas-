%%% canny_filter: function description
function c = canny_filter(gray)

	gauss = gaussian(gray, 5, 1.4);
	n_max_sup = non_max_supression(gauss);
	c = thresholding(n_max_sup);

end