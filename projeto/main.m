% main script

%%% Read the image from file
% im = imread('input/dog.jpg');
% im = imread('input/hello.png');
% im = imread('input/fruits.png');
% im = imread('input/placas.jpeg');
% im = imread('input/placas2.jpg');
% im = imread('input/slovenia-black-and-white-gear-patrol.jpg');
% im = imread('input/la_fille.png');
im = imread('input/tour_eiffel.png');
% im = imread('input/moto.jpg');


%%% Put image to gray scale
% gray = (0.2989 * double(im(:,:,1)) + 0.5870 * double(im(:,:,2)) + 0.1140 * double(im(:,:,3)))/255;
figure();
gray = rgb2gray(im);
print_edges(gray);

%%% Extra, not in the original project
%%% Unconmmet to try XD
% canny_laplace(gray);
% colormap gray;