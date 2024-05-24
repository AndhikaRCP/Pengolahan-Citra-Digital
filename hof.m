clc;
clear;

img = imread('cameraman.tif');

[hog1, visualization1] = extractHOGFeatures(img, 'CellSize',[16 16]);
[hog2, visualization2] = extractHOGFeatures(img, 'CellSize',[32 32]);

figure,
subplot(1,3,1), imshow(img);
subplot(1,3,2), plot(visualization1);
subplot(1,3,3), plot(visualization2);