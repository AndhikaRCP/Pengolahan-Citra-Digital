I1 = imresize(imread('coins.png'),[256,256]);  %<-- harus resize dahulu
I2 = imread('rice.png'); % gambar di samping memilii Size = 256 x 256 
I3 = imadd(I1,I2);
% Penjumlahan pada gambar haruslah memiliki ukuran yang sama, hal ini
% dikarenakan tiap pixel gambar akan di representasikan dalam bentuk
% matrix
imshow(I3);