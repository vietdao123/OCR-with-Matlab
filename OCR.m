% OCR (Optical Character Recognition)
%_______________________________________
% PROGRAM
warning off
% Xoa workspace
clc, close all, clear all
% Doc/Tai anh
imagen = imread('TEST_1.jpg');
% Hien thi anh
imshow(imagen);
title('INPUT');
% Chuyen doi khong gian
if size(imagen,3)==3
    imagen=rgb2gray(imagen);
end
threshold = graythresh(imagen);
imagen = ~im2bw(imagen, threshold);
% Loai bo cac Object (doi tuong) co it hon 30 Pixel
imagen = bwareaopen(imagen, 30);
% Tao ma tran word
word=[ ];
re=imagen;
% Mo/tao file text.txt
fid = fopen('text.txt', 'wt');
% Load templates
load templates
global templates
% tinh so ki tu trong template
num_letras=size(templates,2);
while 1
    % Tach cac ki tu trong anh
    [fl re]=lines(re);
    imgn=fl;
    % Bo comment de xem cac ki tu
    % imshow(fl); pause(0.5);
    % ------------------------------------------------------
    % Dem va xac dinh cac component
    [L Ne] = bwlabel(imgn);
    for n=1:Ne
        [r,c] = find(L==n);
        % tach cac ki tu
        n1=imgn(min(r):max(r), min(c):max(c));
        % Thay doi kich thuoc cac ki tu
        img_r=imresize(n1, [42 24]);
        % Bo comment duoi day de thay tung ki tu
        %imshow(img_r); pause(0.5);
        % -------------------------------------------------------------
        % Chuyen hinh an thanh chu viet
        letter = read_letter(img_r,num_letras);
        % Noi cac ki tu
        word = [word letter];
    end
    fprintf(fid,'%s\n',word);
    % Xoa du lieu trong bien word
    word = [ ];
    
    if isempty(re)
        break
    end
end
fclose(fid);
% Mo file text.txt
winopen('text.txt');
clear all