% Step 1
I = im2double(imread('eight.tif'));
I_dft  =fft2(I);
figure, imshow(I), title('Original Image');
figure, imshow(log(1 + abs(fftshift(I_dft))), []), ...
    title('FT of original Image');

% Step 2
[M, N] = size(I);
dist = distmatrix(M, N);

% Step 3
H = ones(M, N);
radius = 30;
ind = dist <= radius;
H(ind) = 0;

% Step 4
a = 1; b = 1;
Hd = double(a + (b .* H));

% Step 5
DFT_filt = Hd .* I_dft;
I2 = real(ifft2(DFT_filt));
figure, imshow(log(1 + abs(fftshift(DFT_filt))),[]), ...
    title('Filtered FT');
figure, imshow(I2), title('Filtered Image');

% Step 6
figure, imshow(fftshift(Hd), []), title('Filter as an image');
figure, imshow(fftshift(Hd)), zlim([0 2]), title('Filter as a mesh');

% Step 12
sigma = 30;
H_gau = 1 - exp(-(dist .^2) /( 2 * (sigma ^ 2)));

% Step 13
H_gau_hfe = a + (b .* H_gau);
figure, mesh(fftshift(H_gau_hfe)), zlim([0 2]), ...
    title('Gaussian high-pass filter');

% Step 14
DFT_filt_gau = H_gau_hfe .* I_dft;
I3 = real(ifft2(DFT_filt_gau));
figure, imshow(I), title('Original Image');
figure, imshow(log(1 + abs(fftshift(I_dft)))), title('FT of original Image');
figure, imshow(log(1 + abs(fftshift(DFT_filt_gau)))), title('Filtered FT');
figure, imshow(I3), title('Filtered Image');

% Step 15
ffdemo

% Step 19
cutoff = 30; order = 2;
H_but = 1./ ( 1 + (cutoff ./ dist) .^ (2 * order));

% Step 20
H_but_hfe = a + (b .* H_but);
figure, mesh(fftshift(H_but_hfe)), zlim([0 2]), ...
    title('Butterworth high-pass filter');

% Step 21
DFT_filt_but = H_but_hfe .* I_dft;
I4 = real(ifft2(DFT_filt_but));
figure, imshow(I), title('Original Image');
figure, imshow(log(1 + abs(fftshift(I_dft))), []), ...
    title('FT of original Image');
figure, imshow(log(1 + abs(fftshift(DFT_filt_but))), []), ...
    title('Filtered FT');
figure, imshow(I4), title('Filtered Image');

% Step 22
fddemo


