clear all; 
close all; 
clc; 

n = [0:9]; 
ph1 = 0; %set the phase angles for the two sinusoidal signals to 0.
ph2 = 0; 

x = sin(2*pi*0.1*n + ph1); % generates the first sinusoidal signal x with a frequency of 0.1 Hz and phase ph1.
org_x = 1; 
nx = [0 : length(x)-1]- org_x + 1; 

y = sin(2*pi/2*0.1*n + ph2); 
org_y = 1; 
ny = [0 : length(y)-1]- org_y + 1; 

rxy = xcorr(x,y); 
nr = [nx(1)-ny(end) : nx(end)-ny(1)]; % defines the lag indices for the cross-correlation.lag is the delay
[maxR indR] = max(rxy); 
disp(['The correlation at lag zero is: ' num2str(rxy(find(nr==0))) '.']);
disp(['The maximum correlation is at lag ' num2str(nr(indR)) '.']); 

figure, subplot(3,1,1), 
stem(nx,x); 
xlabel('Time index n'); 
ylabel('Amplitude'); 
xlim([nx(1)-1 nx(end)+1]); 
title('Signal x(n)'); 
grid; 

subplot(3,1,2), 
stem(ny,y); 
xlabel('Time index n'); 
ylabel('Amplitude'); 
xlim([ny(1)-1 ny(end)+1]); 
title('Signal y(n)'); 
grid; 

subplot(3,1,3),
stem(nr,rxy); 
xlabel('Time index n'); 
ylabel('Amplitude'); 
xlim([nr(1)-1 nr(end)+1]); 
title('Cross Correlation'); 
grid;
