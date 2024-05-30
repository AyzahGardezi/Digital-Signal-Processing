% Simulate a sampled composite signal of 𝑓𝑑1=125 samples/sec and 𝑓𝑑2=150 samples/sec with 
% length of the signal be 250 samples. 
% • Take the desired number of significant digits from the user as input. 
% • Then choose the method of Quantization (round-off, floor & ceiling) and apply to the signal 
% generated above. 
% • Compute the quantization error signals and explore the impact of each method.

fd1 = 125;
fd2 = 150;

signal_length = 250; % Length of the signal

t1 = (0:signal_length-1) / fd1;
t2 = (0:signal_length-1) / fd2;

f1 = 10;
f2 = 20;

input("Enter the desired number of significant digits: ") 
sigfig = ans;

signal = sin(2 * pi * f1 * t1) + sin(2 * pi * f2 * t2);

rounded_signal = round(signal, sigfig);
floored_signal = floor(signal);
ceil_signal = ceil(signal);

floor_error = signal - floored_signal;
round_error = signal - rounded_signal;
ceiling_error = signal - ceil_signal;


% Plotting
figure;
subplot(4,2,1);
plot(signal);
title('Original Sinusoid');
xlabel('Sample');
ylabel('Amplitude');

subplot(4,2,2);
plot(floored_signal);
title('Floored Signal');
xlabel('Sample');
ylabel('Amplitude');

subplot(4,2,3);
plot(ceil_signal);
title('Ceiled Signal');
xlabel('Sample');
ylabel('Amplitude');

subplot(4,2,4);
plot(rounded_signal);
title('Rounded Signal');
xlabel('Sample');
ylabel('Amplitude');

subplot(4,2,5);
plot(floor_error);
title('Floor Error');
xlabel('Sample');
ylabel('Amplitude');

subplot(4,2,6);
plot(round_error);
title('Rounding Error');
xlabel('Sample');
ylabel('Amplitude');

subplot(4,2,7);
plot(ceiling_error);
title('Ceiling Error');
xlabel('Sample');
ylabel('Amplitude');

