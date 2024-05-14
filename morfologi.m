clc;
clear;

img = imread('blobs.png');
SE = strel('square',2);
SE2 = strel('diamond',1);
% Dilasi
dilasi = imdilate(img, SE);

% Erosi
erosi = imerode(img, SE);

% Opening ( Erosi, Dilasi )
opening = imopen(img, SE);

% Closing ( Dilasi , Erosi )
closing = imclose(img, SE);

% Hit & Miss
hm = bwhitmiss(img, SE,SE2);
figure, 
subplot(2,3,1), imshow(img), title("img");
subplot(2,3,2), imshow(dilasi), title("Dilasi");
subplot(2,3,3), imshow(erosi), title("erosi");
subplot(2,3,4), imshow(opening), title("opening");
subplot(2,3,5), imshow(closing), title("closing");
subplot(2,3,6), imshow(hm), title("hm");