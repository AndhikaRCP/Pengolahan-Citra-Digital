clc;
clear;

img = imread('cameraman.tif');

hasil1 = edge(img, "sobel");
hasil2 = edge(img, "prewitt");
hasil3 = edge(img, "roberts");
hasil4 = edge(img, "log");
hasil5 = edge(img, "canny");
hasil6 = edge(img, "zerocross");
hasil7 = edge(img, "approxcanny");

figure, 
subplot(3,3,1), imshow(hasil1), title('Sobel');
subplot(3,3,2), imshow(hasil2), title('prewitt');
subplot(3,3,3), imshow(hasil3), title('roberts');
subplot(3,3,4), imshow(hasil4), title('log');
subplot(3,3,5), imshow(hasil5), title('canny');
subplot(3,3,6), imshow(hasil6), title('zerocross');
subplot(3,3,7), imshow(hasil7), title('approxcanny');
