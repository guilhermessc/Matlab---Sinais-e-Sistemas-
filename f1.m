function y = f1(M,N)

	y = (1:23)*0;

	for (i = (1:24))

		y(i) = sin(2*pi*(i-1)*M/N); 

	end

end