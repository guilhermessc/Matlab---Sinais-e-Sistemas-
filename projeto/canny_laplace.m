%% canny_laplace: function description
function y = canny_laplace(gray)

figure();
lll = laplacian(gray);
lll = lll;
dtsh = thresholding(uint8(lll));
image(dtsh);


end