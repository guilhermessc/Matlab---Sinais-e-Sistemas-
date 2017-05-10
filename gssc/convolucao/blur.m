%% functionname: function description
function y = blur(x)

	filtro = [	
				1,1,1,1,1;
				1,4,4,4,1; 
				1,4,50,4,1; 
				1,4,4,4,1;
				1,1,1,1,1	
			];
			
	filtro = filtro/sum(sum(filtro));

	y = conv2(x, filtro, 'same');

end