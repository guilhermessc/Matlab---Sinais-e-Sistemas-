disp('-----------------------------');
disp('    1 - Convolução letra a');
disp('    2 - Convolução letra b');
disp('    3 - Convolução letra c');
disp('    4 - Convolução letra d');
disp('    5 - Convolução letra e');
disp('-----------------------------');

choice = input('Escolha:');
t = [-10:1:10];

switch choice
	case 1
		y = conv(u(t,0), u(t,0), 'same');
	case 2
		x = u(t,0) - u(t,-1);
		y = conv(x,u(t,0), 'same');
	case 3
		x = u(t,0) - u(t,-1);
		y = conv(x, x, 'same'); 
	case 4
		x = exponencial(t,-2) .* u(t,0);
		y = conv(u(t,0), x, 'same');
	case 5
		x = exponencial(t,-1) .* u(t,0);
		z = exponencial(t,-2) .* u(t,0);
		y = conv(x, z, 'same'); 
	otherwise
		disp('Wrong choice!');
end

plot(t,y)