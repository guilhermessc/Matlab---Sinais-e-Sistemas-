x = imread('papagaio.png');
subplot(1,2,1);
imshow(x);

subplot(1,2,2);
im = double(x) .* 2;
v = [0 0; 0 0];
im = uint8(conv2(v,x, 'same'))
disp(im);