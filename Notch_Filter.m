clc;
clear;

img = imread('cameraman.tif');

Fs = 128;
dt = 1/Fs;
N = 2*Fs;
t = (0:N-1)*dt;
[xt yt] = meshgrid(t);

th = [0 45];
r = 20;
noise = zeros(256); % <-- karena ukuran citra nya 256

for i = 1:numel(th)
    theta = (th(i)/180)*pi;
    fx = round(r*cos(theta));
    fy = round(r*sin(theta));
    noise = noise + 10*sin(2*pi*(fx*xt+fy*yt));
end

% Noisy Image
imgn = double(img) + 1*noise;
imgn = imgn./max(max(imgn));
imgn = im2uint8(imgn);

% Fourier Transform
Fimg = fft2(img);
Fnoise = fft2(noise);
FImgn = fft(imgn);

h = ones(256, 256);
for i=1:2
    u0 = 2*r*sin(th(i)/180*pi);
    v0 = 2*r*cos(th(i)/180*pi);
    D1 = matriks_andhika(256,256, u0, v0);
    D2 = matriks_andhika(256,256, -u0, -v0);

    D0 = 2;
    idx = (D1 < D0) | (D2 < D0);
    h(idx) = 0;
end

% Notch Filter
Ft = h.*FImgn;

%Image Filtering
ImgF = ifft2(Ft);
ImgF = ImgF./max(max(ImgF));
ImgF = im2uint8(ImgF);

figure,
subplot(3,3,1), imshow(img), title('Original Img');
subplot(3,3,2), imshow(noise), title('Periodic Noise');
subplot(3,3,3), imshow(imgn), title('Noisy Img');
subplot(3,3,4), imshow(fftshift(log(1+abs(Fimg))),[]), title('Fourier Trans. Ori Img');
subplot(3,3,5), imshow(imdilate(fftshift(log(1+abs(Fnoise))), ones(5)), []), title('FT Noisy');
subplot(3,3,6), imshow(imdilate(fftshift(log(1+abs(FImgn))),ones(5)), []), title('FT  Noisy Img');
subplot(3,3,7), imshow(ImgF), title('Image Filtering Result');
