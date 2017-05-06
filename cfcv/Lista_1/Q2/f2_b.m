function y = f2_a
	y = [0:31]*0;
	for i = 1:32
		y (i) = cos((pi*(i-1))/4)*cos((pi*(i-1))/4);
	end
end