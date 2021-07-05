# Inverse Discrete Fourier Transform

The code has been written to prove the accuracy of thr function "fft" in MATLAB. The required ECG signal has been obtained from [Physionet.org](https://archive.physionet.org/cgi-bin/atm/ATM)

Observation:
* Plot 1 represents the Magnitude of the FFT of the given ECG signal and plot 2 represents the recreated version of the ECG signal provided from its DFT. 
* The Inverse Fourier transform is achieved through the inbuilt function ‘ifft’.
* The ECG signals demonstrate the latent operation of the heart and constitute events that concur and coexist with the succession of depolarization and repolarization of the atria and ventricles. 
* Inverse Fast Fourier transform (IDFT) is an algorithm to undo DFT. It converts signal of the frequency domain to a space or time signal. 
* Fast Fourier Transform (FFT) is used to convert the ECG signal, i.e. in the time domain, to an ECG signal in the frequency domain for more accurate extraction of peak values. From which ifft function is used to extract the original ECG wave.
