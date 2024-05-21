clc;
clear;

img = imread('coins.png');
img = im2bw(img);
[boundary, x] = bwboundaries(img);

region = regionprops(x, 'area', 'Centroid', 'BoundingBox', 'Perimeter', 'Image');

figure, 
imshow(x)
hold on;

for k = 1 : length(region)
    lokasi = region(k).Centroid;
    x = lokasi(1);
    y = lokasi(2);
    text(x,y, num2str(k), 'Color', 'red', 'FontSize', 18);
end