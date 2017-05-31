%% functionname: function description
function y = non_max_supression(gray_img)

	direc = grad_dir(gray_img);
	intensity = sobel(gray_img);

	direcao = cos(direc*2 + pi/4); % se direcao > 0 => norte ou sul; c.c. => leste ou oeste

	direcao(direcao > 0) = 1; % norte ou sul
	direcao(direcao < 0) = 0; % leste ou oeste

	max_right = convol(direcao.*intensity, [0,1,-1]);
	max_right(max_right >= 0) = 1;
	max_right(max_right < 0) = 0;
	max_left = convol(direcao.*intensity, [-1,1,0]);
	max_left(max_left >= 0) = 1;
	max_left(max_left < 0) = 0;
	max_hor = max_right.*max_left;

	max_down = convol((direcao*(-1)+1).*intensity, [0;1;-1]);
	max_down(max_down >= 0) = 1;
	max_down(max_down < 0) = 0;
	max_up = convol((direcao*(-1)+1).*intensity, [-1;1;0]);
	max_up(max_up >= 0) = 1;
	max_up(max_up < 0) = 0;
	max_ver = max_down.*max_up;

	max_loc = (max_ver + max_hor);
	max_loc(max_loc > 0) = 1;
	y = intensity .* max_loc;

end