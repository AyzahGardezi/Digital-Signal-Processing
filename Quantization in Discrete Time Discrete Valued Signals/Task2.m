% Audio signal quantization to various bits per sample 
% • You need to record a 5-second audio clip and quantize it with only 1 significant digit.
% • After plotting the original audio signal, the rounded audio signal, and 
% the error signal, notice the results. 
% • Change bit depth to 2,3,4 and then listen and take notes of your observations. 
% • Decide no. of bits for audio until quality stops improving.
% • Use audiorecorder function for recording the voice and soundsc function 
% for playing the recorded audio

load gong.mat

bitdepth = 4;
rounded_signal = round(y, bitdepth);

error_signal = y - rounded_signal;


figure;
subplot(3,1,1);
plot(y);
title('Original Signal');
xlabel('Sample');
ylabel('Amplitude');

subplot(3,1,2);
plot(rounded_signal);
title('Rounded Signal');
xlabel('Sample');
ylabel('Amplitude');

subplot(3,1,3);
plot(error_signal);
title('Error Signal');
xlabel('Sample');
ylabel('Amplitude');

sound(y);
pause(4);
sound(rounded_signal);