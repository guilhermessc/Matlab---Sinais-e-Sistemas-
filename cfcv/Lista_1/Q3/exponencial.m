function y = exponencial(t,alfa)
	y = [1:length(t)]*0;

	for i = 1:length(t)
		y(i) = exp(alfa*t(i));
	end
end