clc;
clear;

Original = imread('peppers.png');
Mean_Filter = 1/9 * [1 1 1; 1 1 1; 1 1 1];
Lowpass = uint8(convn(double(Original),double(Mean_Filter),'same'));
Highpass = Original - Lowpass;
hasilUnsharpMasking = Original + Highpass;

figure,
subplot(1,2,1), imshow(Original), title('Original Image');
subplot(1,2,2), imshow(hasilUnsharpMasking), title('Unsharp Image');
