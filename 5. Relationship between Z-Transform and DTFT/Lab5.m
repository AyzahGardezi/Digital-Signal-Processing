syms n
 % Time index
x = sin(0.1*pi*n) + 0.5*sin(0.2*pi*n); % Sum of two sinusoids signals as an input

t = 0:50;
x2 = sin(0.1*pi*t) + 0.5*sin(0.2*pi*t);

X = ztrans(x);

dtft = fft(x2);

Mag=abs(dtft);

subplot(3, 4, 1)
fplot(x);
title("Original Signal");
xlabel('Time (seconds)'); 
ylabel('Amplitude');

subplot(3, 4, 2)
fplot(X);
title("Z Transform");
xlabel('Frequency (radians)'); 
ylabel('F(z)');

subplot(3, 4, 3)
plot(t, dtft);
title("DTFT");
xlabel('Frequency (radians)');
ylabel('F(z)'); 

subplot(3, 4, 4)
plot(t, Mag);
title("DTFT Magnitude");
xlabel('Frequency (radians)'); 
ylabel('|F(z)|');

subplot(3, 4, 5)
fplot(abs(X), [-pi, pi]); 
title('Z Transform Magnitude'); 
xlabel('Frequency (radians)'); 
ylabel('|F(z)|');


syms w z

% symsum(x*z^-n, n, -inf, inf);

z_sub = subs(X, z, exp(1j*w))

subplot(3, 4, 6)
ezplot(z_sub, [-pi, pi]); 
title('Z Transform Substituted'); 
xlabel('Frequency (radians)'); 
ylabel('F(z)');

subplot(3,4,7);
ezplot(abs(z_sub));
title('Magnitude Spectrum (Z-Transform Substituted)');
xlabel('w');
ylabel('|X(w)|');

subplot(3,4,8);
fplot(angle(z_sub));
title('Phase Spectrum (Z-Transform)');
xlabel('w');
ylabel('Phase(X(w))');


w_vals = linspace(-pi, pi, 1000);
DTFT_sub = subs(z_sub, w, w_vals);

subplot(3,3,9);
fplot(abs(DTFT_sub));
title('Magnitude Spectrum (DTFT)');
xlabel('w');
ylabel('|X(w)|');

subplot(3,4,10);
fplot(angle(DTFT_sub));
title('Phase Spectrum (DTFT)');
xlabel('w');
ylabel('Phase(X(w))');
