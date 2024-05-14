% Tutorial 10 

% Case 1
 I = imread('cameraman.tif');
 figure, subplot(1,2,1), imshow(I), title('Original Image');
 

 % Case 2
 fn = fspecial('average')

 % Case 3
 I_new = imfilter(I,fn);
 subplot(1,2,2), imshow(I_new), title('Filtered Image');

 % Case 4
 fn2 = [1 2 1; 2 4 2; 1 2 1]
 fn2 = fn2 * (1/16)











 % Case 5
 I_new2 = imfilter(I,fn2);
 figure, subplot(1,2,1), imshow(I_new), title('Uniform Average');
subplot(1,2,2), imshow(I_new2), title('Non-uniform Average');

 % Case 6
 fn_gau = fspecial('gaussian',9,1.5);
 figure, bar3(fn_gau, 'b'), ...
     title('Gaussian filter as a 3D graph');

 % Case 7
 I_new3 = imfilter(I, fn_gau);
 figure,
 subplot(1,3,1), imshow(I), title('Original Image');
 subplot(1,3,2), imshow(I_new), title('Average Image');
 subplot(1,3,3), imshow(I_new3), title('Gaussian Image');




















% 
%  