function y = f2c(n)

	y = (1:length(n))*0;

	for (i = (1:length(n)))

		y(i) = sin(n(i)*pi/4)*cos(n(i)*pi/8); 

	end

end