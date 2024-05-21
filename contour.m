clc;
clear;

img = imread('coins.png');
img = im2bw(img);
[boundary, x] = bwboundaries(img);

figure, 
imshow(x);
hold on;

for k = 1 : length(boundary)
    B = boundary{k};
    plot(B(:,2), B(:,1), 'r', 'LineWidth', 4);
end