%% inverte: function description
%inverte uma matriz 3x3
function y = inverte(k)
	[kX, kY] = size(k);
	y = zeros(kX,kY);

	y(1,1) = k(1,3);
	y(2,1) = k(2,3);
	y(3,1) = k(3,3);
	y(1,3) = k(1,1);
	y(2,3) = k(2,1);
	y(3,3) = k(3,1);
end


