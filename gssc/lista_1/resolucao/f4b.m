%% f4b: function from 4th question leter b.
function y = f4b(input_signal, n_time)

	n = [1:length(input_signal)];
	n = n+n_time;
	y = n.*input_signal;

end
