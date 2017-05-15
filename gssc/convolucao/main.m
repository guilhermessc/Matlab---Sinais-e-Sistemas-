% main script

%%% Read the image from file
 im = imread('hello.png');
% im = imread('fruits.png');
% im = imread('placas.jpeg');
% im = imread('placas2.jpg');
% im = imread('slovenia-black-and-white-gear-patrol.jpg');
image(im);

%%% Put image to gray scale
% gray = (0.2989 * double(im(:,:,1)) + 0.5870 * double(im(:,:,2)) + 0.1140 * double(im(:,:,3)))/255;
gray = rgb2gray(im);
% image(gray);

%%% Find the edges
edg = edges(gray);
% figure();
% image(edg);

%%% Clean the noise
edg = sigf(edg);
% figure();
% image(edg);

%%% Clear the weak edges
blurred = blur(edg);
figure();
image(sigf(blurred));
