function y = u (t,offset)
	y = [1:length(t)]*0;

	for i = 1:length(t)
		if(t(i) > -offset)	
			y (i) = 1;
		else
			y (i) = 0;
	end
end