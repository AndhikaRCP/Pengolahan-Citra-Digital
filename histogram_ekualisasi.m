function he = Histogram_Ekualisasi (img) 
hist = imhist(img)
Probabilitas = hist / numel(img);
Kumulatif_Prob = cumsum(Probabilitas);
he = uint8(255 * Kumulatif_Prob(img+1));
end
