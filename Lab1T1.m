Fs = 10000;
n = 0:99

F1 = 500
x = sin (2 * pi * F1/Fs * n)

stem(n, x);
title("Fs = 5000")
hold on;


F1 = 2000
x = sin (2 * pi * F1/Fs * n)
stem(n, x);
hold on;


F1 = 3000
x = sin (2 * pi * F1/Fs * n)
stem(n, x);
hold on;


F1 = 4500
x = sin (2 * pi * F1/Fs * n)
stem(n, x);
legend('500', '2000', '3000', '4500')
hold off;
