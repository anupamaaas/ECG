%DFT of ECG Signal
clc;
clear all;
load('ecg.mat');
ECGsignal = (ecg_prashant_lead2_June_9_2008_epochs_12-0)/200;
Fs = 360;
t = (0:length(ECGsignal)-1)/Fs;
subplot(211)
plot(t,ECGsignal);
title('ECG Signal');
xlabel('Time(s)');
ylabel('Arbitrary Units');
dim = [.822 .56 .3 .3]; 
str = '180902013'; 
annotation('textbox',dim,'String',str,'FitBoxToText','on');
y = fft(ECGsignal);   % Compute DFT of ECGsignal
m = abs(y);   % Magnitude
y(m<1e-6) = 0;
fv = (0:length(y)-1)*100/length(y);   % Frequency vector
subplot(212)
plot(fv,m*(pi/180));
title('Magnitude of the Sample Sequence');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
dim = [.822 .109 .3 .3];
str = '180902013'; 
annotation('textbox',dim,'String',str,'FitBoxToText','on');
sgt = sgtitle('Discrete of Fourier Transform','Color','blue');
sgt.FontSize = 14;
