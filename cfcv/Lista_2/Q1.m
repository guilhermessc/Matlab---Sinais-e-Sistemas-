array = [100 120 124 125 122 123 154 21 23 22 28 21 21 22 255 253 252];
kernel = [1 -1];
%result = conv(array,kernel,'same');
result = myconv(array,kernel);
menor = result(1);
index = 1;
for i = 2:length(result)
	if abs(result(i)) < abs(menor)
		menor = result(i);
		index = i;
	end
end
out = ['A menor variação é ', num2str(menor), ' Na posição ', num2str(index), ' do vetor.'];
disp(out);

% Usamos a convolução com um kernel [1 -1], pois quando ele for espelhado vai virar
% [-1 1], ou seja, ele vai pegar a variação de cada elemento com o próximo elemento do
% vetor. Pois a função de convolução vai deslocando o kernel e multiplicando pelo vetor.
% Dessa forma obteremos um vetor como resultado em que cada elemento desse vetor é o resultado
% da subtração entre o proximo elemento e o elemento desta posição no vetor original.
% Dessa forma a convolução foi útil para obter o vetor de variações. Após iso percorremos
% todo esse vetor para achar a menor variação e mostramos na tela. 