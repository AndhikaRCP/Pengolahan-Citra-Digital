citra = [5 8 3 4 6 2 3 7 ;
         3 2 1 1 9 5 1 0 ;
         0 9 5 3 0 4 8 3 ;
         4 2 7 2 1 9 0 6 ;
         9 7 9 8 0 4 2 4 ;
         5 2 1 8 4 1 0 9 ;
         1 8 5 4 9 2 3 8 ;
         3 7 1 2 3 4 4 6 ;
         ];

kernel = [2 1 0 ; 1 1 -1; 0 -1 -2];

% fungsi konvolusi MATLAB : conv, conv2. convn
% conv2 = 2 dimensi
% same = sama seperti ukuran asli
% full = menambah ukurannya
% valid = ukurannya berkurang
hasil1 = convn(citra,kernel,'same')
hasil2 = convn(citra,kernel,"full")
hasil3 = convn(citra,kernel,'valid')

% fungsi imfilter bisa digunakan untuk konvolusi dan korelasi
% imfilter menghasilkan hasil yang sama seperti conv
% imfilter hanya bisa full dan same dan tidak memiliki valid

hasil4 = imfilter(citra,kernel,'conv','same')
hasil5 = imfilter(citra,kernel,'conv','full')