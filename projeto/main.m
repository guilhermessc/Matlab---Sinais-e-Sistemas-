% main script

%%% Read the image from file
im = imread('input/hello.png');
% im = imread('input/fruits.png');
% im = imread('input/placas.jpeg');
% im = imread('input/placas2.jpg');
% im = imread('input/slovenia-black-and-white-gear-patrol.jpg');
subplot(2, 3, 1), image(im);
title('original');

%%% Put image to gray scale
% gray = (0.2989 * double(im(:,:,1)) + 0.5870 * double(im(:,:,2)) + 0.1140 * double(im(:,:,3)))/255;
gray = rgb2gray(im);
subplot(2, 3, 2), image(gray);
title('gray');

%%% Find the edges
gauss = gaussian(gray, 10, 1.4);
subplot(2, 3, 3), image(gauss);
title('gaussian');

%%% Find the edges
n_max_sup = non_max_supression(gauss);
subplot(2, 3, 4), image(uint8(n_max_sup));
title('non_max_supresion');

theta = grad_dir(gauss);
subplot(2, 3, 5), image((256/(2*pi))*theta);
title('theta');


% max_img_thrsh = uint8(n_max_sup);
% max_img_thrsh(max_img_thrsh > 1) = 1;
% max_img_thrsh(max_img_thrsh < 1) = 0;

% image(250*max_img_thrsh);
% max_img_thrsh = max_img_thrsh.*uint8(n_max_sup);
final = thresholding(n_max_sup);
subplot(2, 3, 6), image(uint8(final));
title('not sobel');
colormap gray;

% h = hist_vec(n_max_sup);
% stem(h);
