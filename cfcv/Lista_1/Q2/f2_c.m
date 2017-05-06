function y = f2_a
	y = [0:31]*0;
	for i = 1:32
		y (i) = sin((pi*(i-1))/4)*cos((pi*(i-1))/8);
	end
end