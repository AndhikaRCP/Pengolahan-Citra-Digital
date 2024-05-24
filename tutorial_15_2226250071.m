% Step 1
I = imread('eight.tif');
In = imnoise(I, 'gaussian', 0, 0.001);
figure, subplot(2,2,1), imshow(I), title('Original Image');
subplot(2,2,2), imshow(In), title('Noisy Image');

% Step 2
f1 = fspecial('average');
I_blur1 = imfilter(In,f1);
subplot(2,2,3), imshow(I_blur1), title('Averaging with default kernel size');

% Step 3
f2 = fspecial('average', [5 5]);
I_blur2 = imfilter(In,f2);
subplot(2,2,4), imshow(I_blur2), title('Averaging with 5x5 kernel');

% Step 4 close and clear

% Step 5
I_salt = im2double(imread('eight_salt.tif'));
I_salt = im2double(imread('eight_pepper.tif'));

