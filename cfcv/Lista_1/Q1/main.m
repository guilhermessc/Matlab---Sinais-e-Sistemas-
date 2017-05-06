M = input('Forneça o M:')
y = f1(M,12);
stem(0:23, y)

t = -10:0.001:10
dt = t(2) - t(1)
y = dt * conv(u(t, 0), u(t, 0), 'same');
stem(t,y)
