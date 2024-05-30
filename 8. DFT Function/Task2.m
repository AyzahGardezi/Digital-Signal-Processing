syms n
t = (0:9);
impulse = t == 0

%disp('impDFT: ')
impDFT = DFTsum(impulse, 10)
oneDFT = DFTsum(1, 10)
cosDFT = DFTsum(cos(0.2*pi), 10)

impIDFT = IDFTsum(impDFT, 10);
oneIDFT = IDFTsum(oneDFT, 10);
cosIDFT = IDFTsum(cosDFT, 10);

subplot(1, 3, 1)
stem(impIDFT)

subplot(1, 3, 2)
stem(oneIDFT)

subplot(1, 3, 3)
stem(cosIDFT)
