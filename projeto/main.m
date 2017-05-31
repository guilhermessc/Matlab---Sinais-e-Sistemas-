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
contours = sobel(gauss);
subplot(2, 3, 4), image(contours);
title('sobel2');



colormap gray;