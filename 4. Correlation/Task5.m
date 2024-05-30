clear all; 
close all; 
clc; 

n = [0:9]; 
ph1 = 0; 
ph2 = 0; 
x = sin(2*pi*0.1*n + ph1); 
org_x = 1; 
nx = [0 : length(x)-1]- org_x + 1; 
y = sin(2*pi/2*0.1*n + ph2); 
org_y = 1; 
ny = [0 : length(y)-1]- org_y + 1; 

rxy = xcorr(x,y); 
nr1 = [nx(1)-ny(end) : nx(end)-ny(1)]; 
[maxR indR] = max(rxy); 

a = fliplr(y);
org_a = 1; 
na = [0 : length(a)-1]- org_a + 1; 

rxa = conv(x,a); 
nr2 = [nx(1)-na(end) : nx(end)-na(1)];
[maxR2 indR2] = max(rxa); 


disp(['The correlation at lag zero for x and y is: ' num2str(rxy(find(nr1==0))) '.']);
disp(['The maximum correlation is at lag ' num2str(nr1(indR)) '.']); 

disp(['The correlation at lag zero for b and a is: ' num2str(rxa(find(nr2==0))) '.']);
disp(['The maximum correlation is at lag ' num2str(nr2(indR2)) '.']); 

figure, subplot(3,2,1), 
stem(nx,x); 
xlabel('Time index n'); 
ylabel('Amplitude'); 
xlim([nx(1)-1 nx(end)+1]); 
title('Signal x(n)'); 
grid; 

subplot(3,2,3), 
stem(ny,y); 
xlabel('Time index n'); 
ylabel('Amplitude'); 
xlim([ny(1)-1 ny(end)+1]); 
title('Signal y(n)'); 
grid; 

subplot(3,2,5),
stem(nr1,rxy); 
xlabel('Time index n'); 
ylabel('Amplitude'); 
xlim([nr1(1)-1 nr1(end)+1]); 
title('Cross Correlation of x and y'); 
grid;

subplot(3,2,2), 
stem(na,a); 
xlabel('Time index n'); 
ylabel('Amplitude'); 
xlim([na(1)-1 na(end)+1]); 
title('Signal a(n)'); 
grid; 

subplot(3,2,4), 
stem(nr2,rxa); 
xlabel('Time index n'); 
ylabel('Amplitude'); 
xlim([nr2(1)-1 nr2(end)+1]); 
title('Cross Correlation of x and a'); 
grid; 