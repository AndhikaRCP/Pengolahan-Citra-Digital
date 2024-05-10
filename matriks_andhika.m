% Nama : Andhika Rizky Cahya Putra
% NPM  : 2226250071

function y = matriks_andhika(M,N, u0, v0)

u = 0 : (M - 1);
v = 0 : (N - 1);

ind_u =  find(u > M/2);
u(ind_u) = u(ind_u) - M;
ind_v =  find(v > N/2);
v(ind_v) = v(ind_v) - N;

[V, U] = meshgrid(v,u);

% Calculate distance matrix
y = sqrt(((U-u0).^2+(V-v0).^2));
