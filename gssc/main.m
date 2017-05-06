% M = input('digite um numero:	');

% y = f1(M,12);
% stem(0:23, y)

% n = (0:1:31);
% stem(n, f2a(n))

% x = 20;
% t = [-x:x];
% y = heaviside(t);
% t1= [-x-1:x-1];
% y1= heaviside(t1);
% t2= -2*t;
% c = conv(y-y1, y, 'same');
% % c = conv(y.*exp(-t), y.*exp(t2), 'same');
% plot((-length(c)/2)+1:1:(length(c)/2), c);


% n= 0:31;
% stem(n,f2b(n));

n = 1000;
dn = 10;
sig1 = [-n:n];
sig2 = [-n-dn:n-dn];
sige = [0:100000:1000000000];
sigc = [-1500000000:100000:500000000];
sigc_ext = [-500000000:100000:1500000000];


sig1_plot_c = [floor(-n/2):floor(n/2)];
sig2_plot_c = [floor((-n-dn)/2):floor((n-dn)/2)];
sige_plot_c = [0:100000:500000000];
sigc_plot_c = [-750000000:100000:250000000];
sigc_ext_plot_c = [-250000000:100000:0000000];



% % invariante no tempo
% y = f4a(sig1, 0) -  f4a(sig1, dn);

% subplot(5,3,1), stem(sig1, f4a(sig1, 0));
% title('sinal1 em 0');
% subplot(5,3,2), stem(sig1, f4a(sig1, dn));
% title('sinal1 em dn');
% subplot(5,3,3), stem(sig1, y);
% title('Variancia no tempo');

% % linear
% y = 2*f4a(sig1, 0) -  f4a((2*sig1), 0);

% subplot(5,3,4), stem (sig1, 2*f4a(sig1, 0));
% title('2*y[s1]');
% subplot(5,3,5), stem (sig1, f4a((2*sig1), 0));
% title('y[2*s1]');
% subplot(5,3,6), stem (sig1, y);
% title('Linearidade 1');



% y = f4a(sig1, 0) + f4a(sig2, 0) -  f4a((sig1+sig2), 0);

% subplot(5,3,7), stem (sig1, f4a(sig1, 0) + f4a(sig2, 0));
% title('y[s1] + y[s2]');
% subplot(5,3,8), stem (sig1, f4a((sig1+sig2), 0));
% title('y[s1 + s2]');
% subplot(5,3,9), stem (sig1, y);
% title('Linearidade 2');


% % causal
% y = f4a(sigc, 0);
% subplot(5,2,7), stem (sigc, y);
% title('Causalidade');
% y = f4a(sigc_ext, 0);
% subplot(5,2,8), stem (sigc_ext, y);
% title('sinal extendido');


% % estavel
% y = f4a(sige, 0);
% subplot(5,1,5), stem (sige, y);
% title('Estabilidade');

% invariante no tempo
y = f4c(sig1, 0) -  f4c(sig1, dn);

subplot(5,3,1), stem ( f4c(sig1, 0));
title('sinal1 em 0');
subplot(5,3,2), stem ( f4c(sig1, dn));
title('sinal1 em dn');
subplot(5,3,3), stem ( y);
title('Variancia no tempo');

% linear
y = 2*f4c(sig1, 0) -  f4c((2*sig1), 0);

subplot(5,3,4), stem ( 2*f4c(sig1, 0));
title('2*y[s1]');
subplot(5,3,5), stem ( f4c((2*sig1), 0));
title('y[2*s1]');
subplot(5,3,6), stem ( y);
title('Linearidade 1');



y = f4c(sig1, 0) + f4c(sig2, 0) -  f4c((sig1+sig2), 0);

subplot(5,3,7), stem ( f4c(sig1, 0) + f4c(sig2, 0));
title('y[s1] + y[s2]');
subplot(5,3,8), stem ( f4c((sig1+sig2), 0));
title('y[s1 + s2]');
subplot(5,3,9), stem ( y);
title('Linearidade 2');


% causal
y = f4c(sigc, 0);
subplot(5,2,7), stem ( y);
title('Causalidade');
y = f4c(sigc_ext, 0);
subplot(5,2,8), stem ( y);
title('sinal extendido');


% estavel
y = f4c(sige, 0);
subplot(5,1,5), stem ( y);
title('Estabilidade');




% % For getting the data series
% angle = [0:1:180];
% sinus=sin(deg2rad(angle));
% cosinus=cos(deg2rad(angle));

% %Create the first subplot
% subplot(2,1,1), plot(angle,sinus,'r'); %Figure with 2 rows, 1 column, index the first plot
% %and plot the first graph
% grid on; xlabel('Angle'); ylabel('Value'); title('Sinus');

% subplot(2,1,2), plot(angle,cosinus,'b'); %Figure with 2 rows, 1 column, index the second plot
% %and plot the second graph
% grid on; xlabel('Angle'); ylabel('Value'); title('Cosinus');
