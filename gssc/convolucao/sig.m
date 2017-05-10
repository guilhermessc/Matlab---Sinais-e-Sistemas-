%% functionname: function description
function y = sig(x, a, c)
% function y = sig(x)

	y = 1./(1+exp(-a.*(x-c)));

	% y = y*cem;
end