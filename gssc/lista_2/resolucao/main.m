% 1a questão
figure();

exemplo = [ 100, 120, 124, 125, 122, 123, 154, 21, 23, 22, 28, 21, 21, 22, 255, 253, 252 ];
resp1 = conv(exemplo, [1,-1]);
stem(resp1);
title('Q1 exemplo');


%  2a questão
figure();

im2  = imread('slovenia-black-and-white-gear-patrol.jpg');

kernel2 = [	0,0,0;
			0,1,0;
			0,0,0];

gray2 = rgb2gray(im2);
subplot(1, 2, 1), image(gray2);
title('antes');

final2 = convol( gray2, kernel2);
subplot(1, 2, 2), image(final2);
title('depois');


%  3a questão
figure();

im3  = imread('slovenia-black-and-white-gear-patrol.jpg');

kernel3 = [	1,1,1;
			1,1,1;
			1,1,1];
kernel3 = kernel3 * (1/9);

gray3 = rgb2gray(im3);
subplot(1, 2, 1), image(gray3);
title('antes');

final3 = convol( gray3, kernel3);
subplot(1, 2, 2), image(final3);
title('depois');


%  4a questão
figure();

im4  = imread('slovenia-black-and-white-gear-patrol.jpg');

kernel4 = [	-1,0,1;
			-2,0,2;
			-1,0,1];

gray4 = rgb2gray(im4);
subplot(1, 2, 1), image(gray4);
title('antes');

final4 = convol( gray4, kernel4);
subplot(1, 2, 2), image(final4);
title('depois');


% %  5a questão
% figure();

% kernel5 = [	-1,0,1;
% 			-2,0,2;
% 			-1,0,1];

% im5  = imread('slovenia-black-and-white-gear-patrol.jpg');

% gray5 = double(rgb2gray(im5));
% subplot(2, 2, 1), image(gray5);
% title('antes');

% horizontal_edges5 = convol( gray5, kernel5);
% subplot(2, 2, 2), image(horizontal_edges5);
% title('horizontal_edges');

% vertical_edges5 = convol( gray5, kernel5');
% subplot(2, 2, 3), image(vertical_edges5);
% title('vertical_edges');

% final5 = sqrt(horizontal_edges5.^2 + vertical_edges5.^2);
% subplot(2, 2, 4), image(sigf(final5));
% title('delta nitidez');

% figure();
% subplot(2, 2, 1), image(gray5);
% title('original');
% subplot(2, 2, 2), image(sigf(final5));
% title('delta nitidez');
% subplot(2, 2, 3), image(gray5 - sigf(final5));
% title('nitidez');
% subplot(2, 2, 4), image(gray5 - 2*sigf(final5));
% title('nitidez++');
% colormap(gray(256));


%  5a questão resolução com um kernel
figure();

im5b  = imread('slovenia-black-and-white-gear-patrol.jpg');

nit = -0.05;
kernel5b = [nit,nit,nit;
			nit, 1 ,nit;
			nit,nit,nit];

kernel5b = (1/(sum(sum(kernel5b)))) * kernel5b;

gray5b = rgb2gray(im5b);
subplot(1, 2, 1), image(gray5b);
title('antes');

final5b = convol( gray5b, kernel5b );
subplot(1, 2, 2), image(final5b);
title('depois');
colormap(gray(256));


