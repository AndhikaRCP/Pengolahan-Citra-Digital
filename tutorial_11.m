% Tutorial 11

% Case 1
I = imread('moon.tif');
Id - im2double(I);
figure, subplot(2,2,1), imshow(Id), title('Original Image');

% Case 2
f= fspecial('laplacian',0);
I_filt = imfilter(Id,f);
subplot(2,2,2), imshow(I_filt), title('Laplacian of Original');

% Case 3
subplot(2,2,3), imshow(I_filt), title('Scaled Laplacian');

% Case 4
I_sharp = imsubtract(Id,I_filt);
subplot(2,2,4), imshow(I_sharp), title('Sharpened Image');

% Case 5
f2 = [0 -1 0; -1 5 -1; 0 -1 0]
I_sharp2 = imfilter(Id,f2);
figure, subplot(1,2,1), imshow(Id), title('Original Image');
figure, subplot(1,2,2), imshow(I_sharp2), title('Composite Laplacian');

close;
clear;
clc;

% Case 7
I = imread('moon.tif');
f_blur = fspecial("average",5);
I_blur = imfilter(I, f_blur);
figure, subplot(1,3,1), imshow(I), title('Original Image');
subplot(1,3,2), imshow(I_blur), title('Blurred Image');

% Case 8 
I_blur_adj = imadjust(I_blur, stretchlim(I_blur), [0 0,4]);

% Case 9
I_sharp = imsubtstract(I, I_blur_adj);

% Case 10
I_sharp_adj = imadjust(I_sharp);
subplot(1,3,3), imshow(I_sharp_adj), title('Sharp image');

% Case 11
I_sharpening = imsubtract(I, I_blur);

% Case 12
I_sharp2 = imadd(I,I_sharpening);
figure, subplot(1,2,1), imshow(I), title('Original Image');
 subplot(1,2,2), imshow(I_sharp2), title('Sharp Image');

 % Case 13

 % Case 14
 I_sharp3 = imfilter(I,f_unsharp);
 figure, subplot(1,2,1), imshow(I), title('Original Image');
 subplot(1,2,2), imshow(I_sharp3), title('Sharp Image');

 close;
clear;
clc;

% Case 16
f_hb = [0 -1 0; -1 5 -1; 0 -1 0];
I_sharp4 = imfilter(I, f_hb);
 figure, subplot(1,2,1), imshow(I), title('Original Image');
 subplot(1,2,2), imshow(I_sharp4), title('Sharp Image');

% Case 17
f_hb2 = [0 -1 0; -1 7 -1; 0 -1 0];
I_sharp5 = imfilter(I,f_hb2);
I_mult = immultiply(I,3);
figure, subplot(1,3,1), imshow(I), title('Original Image');
 subplot(1,3,2), imshow(I_sharp5), title('High Boost, A  = 3');
 subplot(1,3,3), imshow(I_mult), title('Multiplied by 3');