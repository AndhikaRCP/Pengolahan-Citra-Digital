%set initial value
x1 = 1; x2 = 100;
y1 = 1; y2 = 100;
fQ11 = 0; fQ12 = 1; fQ21 = 1; fQ22 = 0.5;

%make grid
[x, y] = meshgrid(x1:x2, y1:y2);

w11 = ((x2-x).*(y2-y))/((x2-x1)*(y2-y1));
w12 = ((x2-x).*(y-y1))/((x2-x1)*(y2-y1));
w21 = ((x-x1).*(y2-y))/((x2-x1)*(y2-y1));
w22 = ((x-x1).*(y-y1))/((x2-x1)*(y2-y1));

z = w11.*fQ11 + w12.*fQ12 + w21.*fQ21 + w22.*fQ22;

surf(x,y,z); colormap('jet');