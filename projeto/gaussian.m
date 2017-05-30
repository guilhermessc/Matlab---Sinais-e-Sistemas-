%% functionname: function description
function y = gaussian(gray_img, k, sgma)

	len = 2*k + 1;
	kernel = zeros(len);

	for (i = [1:len])
		for (j = [1:len])
			kernel(i,j) = (1/(2*pi*sgma^2) * exp(((i-(k+1))^2 + (j-(k+1))^2)/(-2*sgma^2)));
		end
	end

	y = convol(gray_img, kernel);

end