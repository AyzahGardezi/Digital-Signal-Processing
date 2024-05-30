h = [3 2 1 -2 1 0 -4 0 3]; % impulse response 
org_h = 1; % Sample number where origin exists 
nh = [0 : length(h)-1]- org_h + 1; %
h_len = length(h)

x = [0 0 1 0 0];
org_x = 1; % Sample number where origin exists 
nx = [0 : length(x)-1]- org_x + 1; 
x_len = length(x)

z = [4 5 2 1 8]
org_z = 2;
nz = [0 : length(z)-1]- org_z + 1; 
z_len = length(z)

y1 = conv(h,x);
y1 = conv(y1, z);

y2 = conv(h,z);
y2 = conv(y2,x);

ny1 = length(y1)-1; 
ny2 = length(y2)-1; 

subplot(2,2,1) 
stem(y1); 
xlabel('Time index n'); 
ylabel('Amplitude'); 
title('Output Obtained by Convolution'); 
grid;

subplot(2,2,2) 
stem(y2); 
xlabel('Time index n'); 
ylabel('Amplitude'); 
title('Output Obtained by Convolution'); 
grid;

x1 = [5 3 6 1 8]
h1 = [7 2 8 3 3]
z1 = [3 8 3 5 1]

y3 = x1 + h1
y3 = conv(y3, z1)

y4 = conv(x1,z1)
y4 = y4 + conv(h1,z1)


subplot(2,2,3) 
stem(y3); 
xlabel('Time index n'); 
ylabel('Amplitude'); 
title('Output Obtained by Convolution'); 
grid;

subplot(2,2,4) 
stem(y4); 
xlabel('Time index n'); 
ylabel('Amplitude'); 
title('Output Obtained by Convolution'); 
grid;