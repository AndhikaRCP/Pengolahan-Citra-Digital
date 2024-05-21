clc;
clear;

img = imread('onion.png');
red = img(:,:,1) % Red Channel
green = img(:,:,2) % green Channel
blue = img(:,:,3) % blue Channel

gabunganRGB = cat(3,red,green,blue);

figure,
subplot(2,3,1), imshow(img);
subplot(2,3,2), imshow(red);
subplot(2,3,3), imshow(green);
subplot(2,3,4), imshow(blue);
subplot(2,3,5), imshow(gabunganRGB);