% Tutorial 12

% Case 1
I = imread('cameraman.tif');
Id = im2double(I);
ft = fft2(Id);

% Case 2
ft_shift = fftshift(ft);

% Case 3
figure, subplot(1,2,1), imshow(abs(ft_shift), []), ...
    title('Direct remap');


% Case 4
subplot(1,2,2), imshow(log(1 + abs(ft_shift)), []), ...
    title('Direct remap');

close;
clear;
clc;

% Case 6
[M, N] = size(I);
D =  distmatrix(M, N);

% Case 7
D_shift = fftshift(D);
figure, mesh(D_shift)
