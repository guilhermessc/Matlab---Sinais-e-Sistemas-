% main script

% im = imread('hello.png');
im = imread('fruits.png');
image(im);

im = imgaussfilt(im, 2);
figure();
image(im);



% gray = (0.2989 * double(im(:,:,1)) + 0.5870 * double(im(:,:,2)) + 0.1140 * double(im(:,:,3)))/255;
gray = rgb2gray(im);

edg = edges(gray);
% figure();
image(edg);

edg = edges(edg);
figure();
image(edg);

edg = edges(edg);
figure();
image(edg);

