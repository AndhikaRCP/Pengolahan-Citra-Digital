clear;
clc;
close;
citra = imread("peppers.png");

% Filter Penajaman ( Sharpen )
filter_sharpen = [0 -1 0 ; -1 5 -1; 0 -1 0 ];

%Filter Blur ( mean filter )
filter_mean = 1/9*[1 1 1; 1 1 1; 1 1 1];

%Filter Blur ( Gaussian Filter)
filter_gauss = 1/15*[1 2 1; 2 4 2; 1 2 1];

%Filter Emboss
filter_embos = [-2 -1 0; -1 1 1; 0 1 2];

%Filter Edge-Detect
filter_edge = [0  -1 0; -1 4 -1; 0 -1 0];

imgf1 = imfilter(citra, filter_sharpen,'conv');
imgf2 = imfilter(citra, filter_mean,'conv');
imgf3 = imfilter(citra, filter_gauss,'conv');
imgf4 = imfilter(citra, filter_embos,'conv');
imgf5 = imfilter(citra, filter_edge,'conv');

figure,
subplot(3,2,1) ; imshow(imgf1); title("Filter Sharpen")
subplot(3,2,2) ; imshow(imgf2); title("Filter mean/blur")
subplot(3,2,3) ; imshow(imgf3); title("Filter gauss/blur")
subplot(3,2,4) ; imshow(imgf4); title("Filter embos")
subplot(3,2,5) ; imshow(imgf5); title("Filter edge")



