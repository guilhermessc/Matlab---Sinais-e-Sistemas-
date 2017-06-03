%% get_limits: function description
function [inferior, superior] = get_limits(gray_img)

	h = hist_vec(gray_img);
	total = sum(h);
	parcial_sum = 0;

	for i = [1:length(h)]
		parcial_sum = parcial_sum + h(i);
		if (parcial_sum < total/8)
			inferior = i;

		elseif (parcial_sum < total*(1-1/3))
			superior = i;
		end
	end
end
