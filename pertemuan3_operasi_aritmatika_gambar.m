X = uint8([200 100 100; 0 10 50; 50 250 120])
Y = uint8([100 220 230; 45 95 120; 205 100 0])
Z = uint16(X) + uint16(Y)
fmax = max(Z(:))
fmin = min(Z(:))
Za = uint8((255*double(Z-fmin))/double(fmax-fmin)) % Normalisasi
Zb = imadd(X,Y) %memiliki parameter ketiga, yakni ukuran cth imadd(X,Y,'uint16), default parameter ketiga adalah uint8
Zc = imsubtract(X,Y)
Zd = imsubtract(Y,X)
Ze = imabsdiff(Y,X) 
% NOTE : 
% uint hanya menerima bilangan positif, sehingga apabila bilangan <0
% maka akan dianggap 0
% imabsdiff akan melakukan operasi absolut ( mutlak ) sehingga hasil nya
% selalu menghasilkan bilangan positif

X = uint8([200 100 100; 0 10 50; 50 250 120])
Y = uint8([100 220 230; 45 95 120; 205 100 0])
Z = uint8([200 160 130; 145 195 120; 105 240 150])

%penjumlahan_a = imadd(X,Y)
%penjumlahan_a = imadd(penjumlahan_a,Z)
%pembagian_a = imdivide(X,Y)
%pembagian_a = imdivide(pembagian_a,Z)

%c = imlincomb(1,X,1,Y,1,Z,'uint8')

a = uint16(X) + uint16(Y) + uint16(Z) % <--- menghasilkan penjumlahan tanpa round off
Za = uint8(a/3) % <--- menghasilkan pembagian tanpa round off
Zb = imdivide(imadd(X, imadd(Y,Z)),3) % <--- menghasilkan pembagian dengan round off
Zc = imlincomb(1/3,X,1/3,Y,1/3,Z)

