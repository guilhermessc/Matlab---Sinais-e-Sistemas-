%% laplacian: function description
function l = laplacian(gray_img, k, sig)

	% kernel = zeros((2*k+1));
	% for(x = 1:(2*k+1))
	% 	for(y = 1:(2*k+1))
	% 		kernel(x,y) = 1/(-pi*(sig^4)) * (1 - ((((x-k-1)^2) + ((y-k-1)^2))/(2*(sig^2)))) * exp((((x-k-1)^2)+((y-k-1)^2))/(2*(sig^2)));
	% 	end 
	% end

	% kernel = [0 1 1 2 2 2 1 1 0; 
	% 		  1 2 4 5 5 5 4 2 1;
	% 		  1 4 5 3 0 3 5 4 1;
	% 		  2 5 3 -12 -24 -12 3 5 2;
	% 		  2 5 0 -24 -40 -24 0 5 2;
	% 		  2 5 3 -12 -24 -12 3 5 2;
	% 		  1 4 5 3 0 3 5 4 1;
	% 		  1 2 4 5 5 5 4 2 1;
	% 		  0 1 1 2 2 2 1 1 0];

	kernel = 	[-1, -1, -1;
				 -1,  8, -1;
				 -1, -1, -1];
				 
	% sum(sum(kernel))
	l = convol(gray_img, kernel);

end
