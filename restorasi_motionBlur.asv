clc;
clear;

img = imread('cameraman.tif');
img_blur = imread('foto_blur.jpeg');
% Liner Motion : 21 Piksel dengan angle 11 derajat
PSF = fspecial('motion',21,11);
img_double = im2double(img);
blurred = imfilter(img_double,PSF,"conv","circular");
hasil = deconvwnr(img_blur, PSF);

figure,
subplot(1,3,1), imshow(img), title('img');
subplot(1,3,2), imshow(blurred), title('blurred');
subplot(1,3,3), imshow(hasil), title('hasil');