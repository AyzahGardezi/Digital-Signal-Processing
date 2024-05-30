%       Ayzah Gardezi     2021656

% • Create two discrete-time signals 𝑥[𝑛] and ℎ[𝑛] with known values.
% • Convolve the signals in the time domain to obtain the output signal 𝑦[𝑛]
% • Compute the Z-transforms of 𝑥[𝑛], ℎ[𝑛], and 𝑦[𝑛].
% • Verify the convolution property of the Z-transform by confirming that the 
% Z-transform of 𝑦[𝑛] is equal to the product of the Z-transforms of 𝑥[𝑛] and ℎ[𝑛].

x = [1 2 3 4];
h = [1 1 1];

y = conv(x, h);

syms z;
X = sum(x .* z.^(-0:length(x)-1))
H = sum(h .* z.^(-0:length(h)-1))
Y = sum(y .* z.^(-0:length(y)-1))

disp("X * H:")
disp(expand(X*H))

disp("Y:")
disp(Y)

% The convolution theorem is satisfied
