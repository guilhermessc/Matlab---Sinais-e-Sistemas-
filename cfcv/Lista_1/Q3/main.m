disp('-----------------------------');
disp('    1 - Convolução letra a');
disp('    2 - Convolução letra b');
disp('    3 - Convolução letra c');
disp('    4 - Convolução letra d');
disp('    5 - Convolução letra e');
disp('-----------------------------');

choice = input('Escolha:');
t = [-10:0.001:10];

switch choice
	case 1
		y = conv(heaviside(t), heaviside(t), 'same');
	case 2
		x = heaviside(t) - heaviside(t-1);
		y = conv(x,heaviside(t), 'same');
	case 3
		x = heaviside(t) - heaviside(t-1);
		y = conv(x, x, 'same'); 
	case 4
		x = exponencial(t,-2) .* heaviside(t);
		y = conv(heaviside(t), x, 'same');
	case 5
		x = exponencial(t,-1) .* heaviside(t);
		z = exponencial(t,-2) .* heaviside(t);
		y = conv(x, z, 'same'); 
	otherwise
		disp('Wrong choice!');
end

plot(t,y)