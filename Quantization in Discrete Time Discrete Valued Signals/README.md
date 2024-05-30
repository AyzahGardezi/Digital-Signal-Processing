**Lab Objectives: **
• Understanding Quantization: 
• Quantization Process: 
• Effects of Quantization on Signal Quality: 
• Quantization Error Analysis: 

**Learning Outcomes: **
By the end of the lab, students should be able to: 
• Define quantization in the context of discrete-time discrete-valued signals. 
• Explain the process of quantization and its role in signal processing. 
• Analyze the effects of quantization on the quality and fidelity of signals. 
• Identify the trade-offs involved in choosing the number of quantization levels. 
• Implement quantization in a programming environment. 
• Observe and interpret the results of quantization on different types of signals. 
• Conduct quantization error analysis and understand its impact on signal quality. 

**LAB TASKS:  **
**Effects of Quantization with variable precision levels **
• Simulate a sampled composite signal of 𝑓𝑑1=125 samples/sec and 𝑓𝑑2=150 samples/sec with 
length of the signal be 250 samples.  
• Take the desired number of significant digits from the user as input.  
• Then choose the method of Quantization (round-off, floor & ceiling) and apply to the signal 
generated above.  
• Compute the quantization error signals and explore the impact of each method. 

**Audio signal quantization to various bits per sample  **
• You need to record a 5-second audio clip and quantize it with only 1 significant digit. 
• After plotting the original audio signal, the rounded audio signal, and the error signal, notice the 
results.  
• Change bit depth to 2,3,4 and then listen and take notes of your observations.  
• Decide no. of bits for audio until quality stops improving. 
• Use audiorecorder function for recording the voice and soundsc function for playing the 
recorded audio.
