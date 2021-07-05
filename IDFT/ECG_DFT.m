%DFT of ECG Signal

clc;
clear all;
load('100m.mat');
ECGsignal = (val)/200;
Fs = 360;   %sampling frequency
t = (0:length(ECGsignal)-1)/Fs;

subplot(211)
plot(t,ECGsignal);
title('ECG Signal');
xlabel('Time(s)');
ylabel('Arbitrary Units');

y = fft(ECGsignal);   % Compute DFT of ECGsignal
m = abs(y);   % Magnitude
y(m<1e-6) = 0;
fv = (0:length(y)-1)*100/length(y);   % Frequency vector

subplot(212)
plot(fv,m*(pi/180));
title('Magnitude of the Sample Sequence');
xlabel('Frequency (Hz)');
ylabel('Magnitude');

sgt = sgtitle('Discrete of Fourier Transform','Color','red');
sgt.FontSize = 14;
