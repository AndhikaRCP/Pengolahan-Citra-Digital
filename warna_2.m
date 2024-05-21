clc;
clear;

img = imread('onion.png');
YCrCb_img = rgb2ycbcr(img);
hsv_image = rgb2hsv(img);

[y, cb, cr] = imsplit(YCrCb_img);
[h , s, v] = imsplit(hsv_image);

figure,
subplot(4,2,1), imshow(img);
subplot(4,2,2), imshow(y);
subplot(4,2,3), imshow(cb);
subplot(4,2,4), imshow(cr);
subplot(4,2,5), imshow(h);
subplot(4,2,6), imshow(s);
subplot(4,2,7), imshow(v);