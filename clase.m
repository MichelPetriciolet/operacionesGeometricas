clc
clear all
close all
clc
img= imshow("imagen_2.jpg");
figure(1)
imshow(img)

%DEZPLAZAMIENTO

d=[-100,-100]; %vector de desplazamineto
%img_despl = imtranslate(img,d); %realizando la translacion+
img_despl = imtranslate(img,d,'outputView','full'); %translacion
figure(2)
%imshow(img_despl)

%ESCALAMIENTO

%img_esc =imresize(img,3,"bicubic");%factor de escala
img_esc =imresize(img,[500,1000]);%factor de escala
figure(3)
%imshow(img_esc);

%inclinacion
forma = affine2d([1 1 0;0.5 1 0; 0 1 1]);%MATRIZ DE FORMA
img_warp = imwarp(img,forma);
figura(4)
imshow(img_warp)