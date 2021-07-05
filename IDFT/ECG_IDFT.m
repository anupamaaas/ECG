%Reconstruction of ECG from its DFT

clc;
clear all;
load('100m.mat');
ECGsignal = (val)/200;

y = fft(ECGsignal);   % Compute DFT of ECGsignal
m = abs(y);   % Magnitude
y(m<1e-6) = 0;
fv = (0:length(y)-1)*100/length(y);   % Frequency vector

subplot(211)
plot(fv,m*(pi/180));
title('Magnitude of DFT of the ECG Signal');
xlabel('Frequency (Hz)');
ylabel('Magnitude');

subplot(212)
plot(ifft(y));
title('Resultant ECG Signal');
xlabel('Time(s)');
ylabel('Arbitrary Units');

sgt = sgtitle('Inverse Discrete Fourier Transform','Color','red');
sgt.FontSize = 14;
