% Geometric Mean Filter
% dapat digunakan untuk noise gaussian dan noise salt and pepper
clc;
clear;
close;
% Aritmatic Mean Filter
Image = imread('image_test.jpg');

% Gaussian Noise
mu = 0;
sigma = 0.05; % untuk standar deviasi
gauss_noise = random('Normal', mu, sigma, size(Image)); % untuk mendapatkan noise
img_gauss = im2double(Image) + gauss_noise;
img_gauss = im2uint8(img_gauss);

img_geo = uint8(nlfilter(double(img_gauss), [3 3], @fungsi_geometric));

figure, 
subplot(2,3,1), imshow(Image), title('Original Image');
subplot(2,3,2), imshow(img_gauss), title('Gauss Noise Image');
subplot(2,3,3), imshow(img_geo), title('Restoration Geometric mean filter Image');
subplot(2,3,4), imhist(Image), title('Original Histogram');
subplot(2,3,5), imhist(img_gauss), title('Gauss Noise Histogram');
subplot(2,3,6), imhist(img_geo), title('Restoration Geometric mean filter Histogram');
