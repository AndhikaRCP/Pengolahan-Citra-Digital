X = uint8([200 100 100; 0 10 50; 50 250 120])                                                                                          
Y = uint8([100 220 230; 45 95 120; 205 100 0])

Z = bitor(X,Y) %<-- proses nya, X dan Y di ubah menjadi biner dan dilakukan operasi OR, Lalu di ubah kembali ke desimal

gambar_1 = imresize(imread('X.png'),[222 265]);
gambar_1 = rgb2gray(gambar_1);

gambar_1_modif = im2bw(gambar_1)

gambar_2 = imread('Y.png'); % size nya 222 x 265
gambar_2 = rgb2gray(gambar_2)

gambar_2_modif = im2bw(gambar_2)

kombinasi = bitor(gambar_1_modif,gambar_2_modif)
imshow(kombinasi)