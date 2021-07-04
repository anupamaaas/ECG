%Unit Sample Function
clc;
clear all;
n=-20:20;
d= eq(n,0);
subplot(211);
stem (n,d,'r');
xlabel('n');
ylabel('d');
title('Unit Sample Sequence');
dim = [.822 .6 .3 .3];
str = '180902013';
annotation('textbox',dim,'String',str,'FitBoxToText','on');
d5= eq(n,-5);
subplot(212);
stem (n,d5,'r');
xlabel('n');
ylabel('Amplitude');
title('Unit Sample Sequence Delayed by 5 Units');
dim = [.822 .13 .3 .3];
str = '180902013';
annotation('textbox',dim,'String',str,'FitBoxToText','on');

