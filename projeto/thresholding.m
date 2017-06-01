%% thresholding: function description
function [minv, maxv] = thresholding(gray_img)

	h = hist_vec(gray_img);
	len = length(h)

	score = 3*sum(h)*len^3;

	a=0;
	b=0;
	c=0;

	dom = [1:len];
	h = h.^3;

	for x = [1:ceil(len/100):len]
		x/len*100
		for y = [1:ceil(len/100):len]
			for z = [1:ceil(len/100):len]

				part_score = 0;

				main_vec = [(((dom*0+1)*x)-dom).^2;(((dom*0+1)*y)-dom).^2;(((dom*0+1)*z)-dom).^2];
				part_score = part_score + sum(min(main_vec).*h);

				if (part_score < score)
					score = part_score;
					a = x;
					b = y;
					c = z;
				end

			end
		end
	end

	v = [a, b, c];

	maxv = (sum(v) - min(v))/2
	minv = (sum(v) - max(v))/2

end
	
