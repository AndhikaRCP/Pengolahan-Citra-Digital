img = imread("cameraman.tif");
imgUp1 = imresize(img,[512 512], "nearest");
imgUp2 = imresize(img,[512 512], "bilinear");
imgUp3 = imresize(img,[512 512], "cubic");
subplot(1, 2, 1); imshow(imgUp3) ; title("cubic");
subplot(1, 2, 2); imshow(imgUp2) ; title("Bilinear");
