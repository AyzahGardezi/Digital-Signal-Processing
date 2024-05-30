**Lab Objectives:**
- To explore the mathematical relationship between the Z-Transform and DTFT. 
- To learn methods for converting signals between the Z-Transform and DTFT domains. 
- To gain practical experience in implementing these conversions using MATLAB. 
- To analyze and interpret the frequency characteristics of signals and systems through magnitude and phase spectra.

**Learning Outcomes:** 
By the end of this lab, students should be able to: 
- Understand the mathematical relationship between the Z-Transform and DTFT and apply it to signal conversion. 
- Implement algorithms to convert signals between the Z-Transform and DTFT domains using MATLAB. 
- Interpret magnitude and phase spectra to analyze the frequency characteristics of signals and systems. 
- Apply theoretical concepts to practical scenarios by generating signals, computing transforms, and visualizing frequency domain representation.

**Lab Task 1:**
In this task, you have to find out the z transform of the given discrete time input signal and then compare it with the dtft of the given input signal. 
Input signal:  
n = 0:50; % Time index 
x = sin(0.1*pi*n) + 0.5*sin(0.2*pi*n); % Sum of two sinusoids signals as an input 

Now do the following: 
- Plot Input Signal 
- Compute Z-Transform 
- Plot Z-Transform 
- Compute DTFT 
- Plot Magnitude Spectra of both dtft and z transform. 

**Lab task 2:**
Given a Z-Transform expression, Perform the substitution z=e^jω to convert the Z-Transform into the 
DTFT. Write MATLAB code to implement the conversion: 
- Define the symbolic variable for frequency, ω. 
- Substitute e^jω for z in the Z-Transform expression. 
- Compute the DTFT expression. 
- Plot the magnitude (use abs function) and phase (use angle function) spectra of both the original Z-Transform and the converted DTFT expressions for comparison. 
- Analyze the frequency characteristics of the signal represented by both transformations and compare the results. 
- Use a substitute e^jω for z in the Z-Transform expression to obtain the DTFT expression X_dtft.
