%% f4c: function from 4th question leter c.
function y = f4c(input_signal, n_time)

	i = 1:floor(length(input_signal)/2);
	y = i*0;

	for (i=i)

		y(i) = input_signal(2*i);
	
	end

end