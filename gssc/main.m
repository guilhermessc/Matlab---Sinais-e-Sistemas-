% M = input('digite um numero:	');

% y = f1(M,12);
% stem(0:23, y)

% n = (0:1:31);
% stem(n, f2a(n))

x = 20;
t = [-x:x];
y = heaviside(t);
t1= [-x-1:x-1];
y1= heaviside(t1);
t2= -2*t;
c = conv(y-y1, y, 'same');
% c = conv(y.*exp(-t), y.*exp(t2), 'same');
plot((-length(c)/2)+1:1:(length(c)/2), c);


% n= 0:31;
% stem(n,f2b(n));