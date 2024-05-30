%       Ayzah Gardezi     2021656

% • Generate a discrete-time signal 𝑥[𝑛] with known values.
% • Shift the signal in time by a certain number of samples (positive or negative).
% • Compute the Z-transforms of the original signal 𝑥[𝑛] and the shifted signal.
% • Verify the time shifting property of the Z-transform by comparing the 
%   Z-transforms of the original and shifted signals

x1 = [5 5 6 1 7 3 7]

shift = 3;
x2 = [zeros(1, shift), x1];

syms z
X1 = sum(x1 .* z .^ (-0:length(x1)-1));
X2 = sum(x2 .* z .^ (-0:length(x2)-1));

disp("X1:");
disp(X1);

disp("X2:");
disp(X2);

% yes the property is satisfied.
% Please note that when run, the output of X1 has the value 5/(z^0) = 5 at
% the end instead of the beginning due to some display mechanism in matlab
