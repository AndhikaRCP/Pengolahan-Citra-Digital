clc;
clear;

img = [ 3 5 7;
        2 4 1;
        6 3 5];

matriks = graycomatrix(img, 'GrayLimits',[0 7], 'Offset',[0 1]); % default nya 255
hasil_glcm = graycoprops(matriks,{ 'Contrast', 'Correlation','Energy','Homogeneity' }) % defaultnya berisi contras, colleration, energy dan homogenity




