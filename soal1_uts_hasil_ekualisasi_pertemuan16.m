clear;
clc;

% Citra Warna
Original_1A = rgb2gray(imread('peppers.png')) + 100; % Terang
Original_1B = rgb2gray(imread('peppers.png')) - 100; % Gelap

% Citra GrayScale
Original_2A = imread("cameraman.tif") + 100;
Original_2B = imread("cameraman.tif") - 100;

% Hasil
hasil_1A = histogram_ekualisasi(Original_1A);
hasil_1B = histogram_ekualisasi(Original_1B);
hasil_2A = histogram_ekualisasi(Original_2A);
hasil_2B = histogram_ekualisasi(Original_2B);

% Tampilkan Original Image dan Histogram nya
figure,
subplot(4,4,1), imshow(Original_1A), title("Original 1A");
subplot(4,4,2), imhist(Original_1A), title("Hist. Original 1A");
subplot(4,4,3), imshow(Original_1B), title("Original 1B");
subplot(4,4,4), imhist(Original_1B), title("Hist. Original 1B");
subplot(4,4,5), imshow(Original_2A), title("Original 2A");
subplot(4,4,6), imhist(Original_2A), title("Hist. Original 2A");
subplot(4,4,7), imshow(Original_2B), title("Original 2B");
subplot(4,4,8), imhist(Original_2B), title("Hist. Original 2B");

% Tampilkan Hasil Image dan Histogram nya
subplot(4,4,9),  imshow(hasil_1A), title("Hasil 1A");
subplot(4,4,10), imhist(hasil_1A), title("Hist. Hasil 1A");
subplot(4,4,11), imshow(hasil_1B), title("Hasil 1B");
subplot(4,4,12), imhist(hasil_1B), title("Hist. Hasil 1B");
subplot(4,4,13), imshow(hasil_2A), title("Hasil 2A");
subplot(4,4,14), imhist(hasil_2A), title("Hist. Hasil 2A");
subplot(4,4,15), imshow(hasil_2B), title("Hasil 2B");
subplot(4,4,16), imhist(hasil_2B), title("Hist. Hasil 2B");


