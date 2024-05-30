h = [3 2 1 -2 1 0 -4 0 3]; % impulse response 
org_h = 1; % Sample number where origin exists 
nh = [0 : length(h)-1]- org_h + 1; %
h_len = length(h)

x = [0 0 1 0 0];
org_x = 1; % Sample number where origin exists 
nx = [0 : length(x)-1]- org_x + 1; 
x_len = length(x)

y1 = conv(h,x);
y2 = conv(x, h);
ny = [nh(1)+ nx(1) : nh(end)+nx(end)]; 

subplot(2,1,1) 
stem(ny,y1); 
xlabel('Time index n'); 
ylabel('Amplitude'); 
xlim([ny(1)-1 ny(end)+1]); 
title('Output Obtained by Convolution'); 
grid;

subplot(2,1,2) 
stem(ny,y2); 
xlabel('Time index n'); 
ylabel('Amplitude'); 
xlim([ny(1)-1 ny(end)+1]); 
title('Output Obtained by Convolution'); 
grid;

