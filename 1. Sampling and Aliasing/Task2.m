% f = 1000,2000,3000,4000, 5000, 6000, 8000, 9000, 25000, -1000, -2000, 
% -3000 Hz with Fs = 8000 samples/sec. Listen to the tones, and observe at 
% Sounds like what frequency? Also Specify whether  Aliasing is happening 
% or not. Use the function ‘sound’ to generate tones of different 
% frequencies. Add a small pause between tones


F1 = [1000 2000 3000 4000 5000 6000 8000 9000 25000 -1000 -2000 -3000];
Fs = 8000

n = 0 : 1/Fs : 1
for a = 1:12
    y = sin (2 * pi * F1(a) * n)
    sound(y,2*Fs);
    pause(1);
end
