load('Zmatrix.mat')
load('Pmatrix.mat')

[ma mi] = countMaxMin(Pmatrix)
[ma mi] = countMaxMin(Zmatrix)
figure
mesh(Pmatrix)
figure
mesh(Zmatrix)

