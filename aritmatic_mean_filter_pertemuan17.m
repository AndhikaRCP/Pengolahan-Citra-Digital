% Noise Reduction using Spatial Domain Technique

% Aritmatic Mean Filter
Image = imread('image_test.jpg');

% Gaussian Noise
mu = 0;
sigma = 0.05; % untuk standar deviasi
gauss_noise = random('Normal', mu, sigma, size(Image)); % untuk mendapatkan noise
img_gauss = im2double(Image) + gauss_noise;
img_gauss = im2uint8(img_gauss);

% f = fspecial('average',[5 5]); % filter ukuran 5x5
f = fspecial('average'); % Default ukuran filter = 3x3
hasil_restorasi = imfilter(img_gauss,f, "symmetric");
hasil_restorasi2 = imfilter(hasil_restorasi,f,"symmetric");
hasi_restorasi3 = imfilter(hasil_restorasi2,f,"symmetric");
hasi_restorasi4 = imfilter(hasi_restorasi3,f,"symmetric");
hasi_restorasi5 = imfilter(hasi_restorasi4,f,"symmetric");
hasi_restorasi6 = imfilter(hasi_restorasi5,f,"symmetric");
hasi_restorasi7 = imfilter(hasi_restorasi6,f,"symmetric");
hasi_restorasi8 = imfilter(hasi_restorasi7,f,"symmetric");
hasi_restorasi9 = imfilter(hasi_restorasi8,f,"symmetric");
hasi_restorasi10 = imfilter(hasi_restorasi9,f,"symmetric");

figure, 
subplot(2,3,1), imshow(Image), title('Original Image');
subplot(2,3,2), imshow(img_gauss), title('Gauss Noise Image');
subplot(2,3,3), imshow(hasil_restorasi), title('Restoration aritmatic mean filter Image');
subplot(2,3,4), imhist(Image), title('Original Histogram');
subplot(2,3,5), imhist(img_gauss), title('Gauss Noise Histogram');
subplot(2,3,6), imhist(hasil_restorasi), title('Restoration aritmatic mean filter Histogram');