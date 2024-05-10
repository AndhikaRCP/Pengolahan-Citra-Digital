clc;
clear;

img = imread('cameraman.tif');
% Linear motion : 20 piksel dengan angle 45 derajat
H = fspecial('motion', 20, 45);
MotionBlur = imfilter(img, H, 'replicate');

% Blur menggunakan gaussian dengan kernel 9x9 dan std 2
H1 = fspecial('gaussian', 9, 2);
blur = imfilter(img, H1,'replicate');

figure,
subplot(1,2,1), imshow(MotionBlur), title('MotionBlur');
subplot(1,2,2), imshow(blur), title('blur');
