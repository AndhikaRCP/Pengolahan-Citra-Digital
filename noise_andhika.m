% Model Noise

clear;
clc;

load("randomVariabel"); 
rng(s);

Image = imread('image_test.jpg');

% Gaussian Noise
mu = 0;
sigma = 0.05; % untuk standar deviasi
gauss_noise = random('Normal', mu, sigma, size(Image)); % untuk mendapatkan noise
img_gauss = im2double(Image) + gauss_noise;
img_gauss = im2uint8(img_gauss);

% Salt and Paper Noise
li = randperm(length(Image(:)));
noise_sp = Image;
noise_sp(li(1:(end/5))) = 255; % ini salt
noise_sp(li(1:(end/10))) = 0; % ini pepper

% Uniform Noise
noise_uniform = random('Uniform',0.1,0.2,size(Image)); % untuk mendapatkan sebaran noise, ukuran noise = ukuran citra
img_uniform = im2double(Image) + noise_uniform;
img_uniform = im2uint8(img_uniform);

% Exponential Noise
noise_exp = random('Exponential',10, size(Image));
img_exp = uint8(noise_exp);
img_exp = Image + img_exp;

% Gamma Noise
noise_gamma = random('Gamma', 2, 10, size(Image));
img_gamma = uint8(noise_gamma);
img_gamma =Image + img_gamma;

% Rayleigh Noise
noise_rayleigh = random('Rayleigh',15, size(Image));
img_ray = uint8(noise_rayleigh);
img_ray = Image + img_ray;

% Periodic Noise
s = size(Image);
[x,y] = meshgrid(1:s(1), 1:s(2));
p = sin(x/3+y/5)+1;
periodic_noise = (im2double(Image) +p'/2)/2;

figure,
subplot(2,4,1), imshow(Image), title('Original Image');
subplot(2,4,2), imshow(img_gauss), title('Gaussian Noise Image');
subplot(2,4,3), imshow(noise_sp), title('Salt and Pepper Noise Image');
subplot(2,4,4), imshow(img_uniform), title('Uniform Noise Image');
subplot(2,4,5), imshow(img_exp), title('Exponential Noise Image');
subplot(2,4,6), imshow(img_gamma), title('Gamma Noise Image');
subplot(2,4,7), imshow(img_ray), title('Rayleigh Noise Image');
subplot(2,4,8), imshow(periodic_noise), title('Periodic Noise Image');