function y = f1(M,N)
    y = (0:23)*0;
    for i = 1:24
        y (i) = sin((2*pi*M*(i - 1))/12)
    end

end

