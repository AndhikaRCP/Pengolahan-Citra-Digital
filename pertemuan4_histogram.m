Image = imread('cameraman.tif');
Image1 = imsubtract(Image,75);
Image2 = imadd(Image,75);

figure,
subplot(3,2,1); imshow(Image);
subplot(3,2,2); imhist(Image);
subplot(3,2,3); imshow(Image1);
subplot(3,2,4); imhist(Image1);
subplot(3,2,5); imshow(Image2);
subplot(3,2,6); imhist(Image2);

Standar_deviation_Image  = std(single(Image),[],"all")
Standar_deviation_Image1 = std(single(Image1),[],"all")
Standar_deviation_Image2 = std(single(Image2),[],"all")

s= round()