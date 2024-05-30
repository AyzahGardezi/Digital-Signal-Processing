function h = IDFTsum(X, N)
    n = [0:1:N-1]; % Time index vector
    k = [0:1:N-1]; % Frequency index vector
    % Compute the DFT using matrix multiplication
    WN = exp (1i * 2 * pi / N); % Twiddle factor opposite something
    nk = n' * k; 
    WNnk = WN.^ nk; 
    Xn = 1/N * X * WNnk; % Compute the IDFT
    h = Xn;
%    h = abs(Xn)
end