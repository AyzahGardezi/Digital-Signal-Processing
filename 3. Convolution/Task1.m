clear all;
close all;
clc;
h = [3 2 1 -2 1 0 -4 0 3]; % impulse response 
org_h = 1; % Sample number where origin exists 
nh = [0 : length(h)-1]- org_h + 1; %
h_len = length(h)

x = [0 0 1 0 0];
org_x = 1; % Sample number where origin exists 
nx = [0 : length(x)-1]- org_x + 1; 
x_len = length(x)

y = conv(h,x); 
ny = [nh(1)+ nx(1) : nh(end)+nx(end)]; 
y_len = length(y)

total = h_len + x_len - 1;
str = "M + N - 1 = 15"
disp(str)

total

figure, 
subplot(3,1,1), 
stem(nh,h); 
xlabel('Time index n'); 
ylabel('Amplitude'); 
xlim([nh(1)-1 nh(end)+1]);
title('Impulse Response h(n)'); 
grid; 

subplot(3,1,2), 
stem(nx,x); 
xlabel('Time index n');
ylabel('Amplitude'); 
xlim([nx(1)-1 nx(end)+1]); 
title('Input Signal x(n)'); 
grid; 
subplot(3,1,3) 
stem(ny,y); 
xlabel('Time index n'); 
ylabel('Amplitude'); 
xlim([ny(1)-1 ny(end)+1]); 
title('Output Obtained by Convolution'); 
grid;
