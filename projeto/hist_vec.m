%% hist_vec: function description
function h = hist_vec(gray_img)

	gray_img = double(gray_img);
	max_val = floor(max(max(gray_img)));
	min_val = 1;

	h = [min_val:max_val]*0;

	[x,y] = size(gray_img);

	for i = [1:x]
		for j = [1:y]
			if(floor(gray_img(i, j)) > 0)
				h(floor(gray_img(i, j))) = h(floor(gray_img(i, j))) + 1;
			end
		end
	end
end