disp('-------------------------------');
disp('     1 - Plotar sinal da letra a');
disp('     2 - Plotar sinal da letra b');
disp('     3 - Plotar sinal da letra c');
disp('-------------------------------');
choice = input('Escolha a opção:')

switch choice
	case 1
		y = f2_a();
	case 2
		y = f2_b();
	case 3
		y = f2_c();
	otherwise
		disp('Wrong choice!');
end

stem(0:31,y)