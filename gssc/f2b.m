function y = f2b(n)

	y = (1:length(n))*0;

	for (i = (1:length(n)))

		y(i) = (cos(n(i)*pi/4))^2; 

	end

end