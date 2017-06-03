% main script

%%% Read the image from file
% im = imread('input/dog.jpg');
% im = imread('input/hello.png');
% im = imread('input/fruits.png');
% im = imread('input/placas.jpeg');
% im = imread('input/placas2.jpg');
% im = imread('input/slovenia-black-and-white-gear-patrol.jpg');
% im = imread('input/la_fille.png');
% im = imread('input/tour_eiffel.png');
im = imread('input/moto.jpg');


%%% Put image to gray scale
% gray = (0.2989 * double(im(:,:,1)) + 0.5870 * double(im(:,:,2)) + 0.1140 * double(im(:,:,3)))/255;
gray = rgb2gray(im);
print_edges(gray);
figure();

[sobelr, cannyr, laplacer] = print_edges(im(:,:,1));
figure();
[sobelg, cannyg, laplaceg] = print_edges(im(:,:,2));
figure();
[sobelb, cannyb, laplaceb] = print_edges(im(:,:,3));
figure();


final_sobel = sqrt(sobelr.^2 + sobelg.^2 + sobelb.^2);
image(final_sobel);
figure();


final_canny = sqrt(cannyr.^2 + cannyg.^2 + cannyb.^2);
image(final_canny);
figure();


final_laplace = sqrt(double(laplacer).^2 + double(laplaceg).^2 + double(laplaceb).^2);
image(final_laplace);
figure();
