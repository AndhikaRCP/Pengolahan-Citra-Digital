% Step 1
I = imread('eight.tif');
Id - im2double(I);
I_dtf = fft2(Id);
figure, imshow(Id), title('Original Image');
figure, imshow(log(1 + abs(fftshift(I_dft))), []), ...
    title('FT of original image');

% Step 2
[M, N] = size(I);
dist = distmatrix(M, N);
figure, mesh(fftshift(dist)), title('Distance Matrix');

% Step 3
H = zeros(M, N);

% Step 4
radius = 35;
ind = dist <= radius;
H(ind) = 1;
Hd = double(H);

% Step 5
figure, imshow(fftshift(H)), title('Ideal low-pass filter');

% Step 6
DFT_filt = Hd .* I_dft;
I2 = real(ifft2(FT_filt));

% Step 7
figure, imshow(log(1 + abs(fftshift(DFT_filt))), []), ...
    title('Filtered FT');
figure, imshow(I2), title('Filtered Image');

fddemo

% Close the demo

% Step 10
sigma = 30;
H_gau = exp(-(dist .^ 2) / (2 * (sigma ^ 2)));
figure, imshow(Id), title('Original Image');
figure, imshow(log(1 + abs(fftshift(I_dft))), []), ...
    title('DFT of original image');
figure, mesh(fftshift(dist)), title('Distance Matrix');
figure, imshow(fftshift(H_gau)), title('Gaussian low-pass');

% Step 11
DFT_filt_gau = H_gau .* I_dft;
I3 = real(ifft2(DFT_filt_gau));
figure, imshow(log(1 + abs(fftshift(DFT_filt_gau))), []), ...
    title('Filtered FT');
figure, imshow(I3), title('Filered Image');

% Step 12
D0 = 35; n = 3;
H_but = 1 ./ (1 + (dist ./ D0) .^ ( 2 * n));
figure, imshow(Id), title('Original Image');
figure, imshow(log(1+ abs(fftshift(I_dft))), []), ...
    title('FT of original image');
figure, mesh(fftshift(dist)), title('Distance Matrix');
figure, imshow(fftshift(H_but)), title('Butterworth low-pass');

% Step 13
DFT_filt_but = H_but .* I_dft;
I4 = real(ifft2(DFT_filt_but));
figure, imshow(log(1+ abs(fftshift(DFT_filt_but))), []), ...
    title('Filtered FT');
figure, imshow(I4), title('Filtered Image');

% Step 14
figure, mest(fftshift(Hd)), TITLE('Ideal low-pass filter');
figure, mest(fftshift(H_gau)), TITLE('Gaussian low-pass filter');
figure, mest(fftshift(H_but)), TITLE('Butterworth low-pass filter');
