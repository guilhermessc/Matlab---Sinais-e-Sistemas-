%% print_edges: function description
function [sob, canny, lap] = print_edges(gray)

colormap gray;
subplot(2, 2, 1), image(gray);
title('original');

% Apply sobel
sob = sobel(gray);
subplot(2, 2, 2), image(sob);
title('sobel');


%%% Apply canny
canny = canny_filter(gray);
subplot(2, 2, 3), image(canny);
title('canny');


%%% Apply laplace
lap = uint8(laplacian(gray, 3, 1.4));
subplot(2, 2, 4), image(lap);
title('laplacian');

end