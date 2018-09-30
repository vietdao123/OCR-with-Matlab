function [fl re] = lines(im_texto)
% Chia van ban thanh tung dong
% im_texto -> input image; fl -> first line; re -> remain line
% Vi du
% im_texto = imread('TEST3.jpg')
% [fl re]=lines(im_texto);
% subplot(3, 1, 1); imshow(im_texto); title('INPUT')
% subplot(3, 1, 1); imshow(fl); title('Dong dau')
% subplot(3, 1, 3); imshow(rn); title('Dong tiep theo')

im_texto = clip(im_texto);
num_filas = size(im_texto, 1);

for s=1:num_filas
    if sum(im_texto(s,:))==0
        nm = im_texto(1:s-1, :); % Dong dau tien cua ma tran
        rm = im_texto(s:end, :); % Dong cuoi cung cua ma tran
        fl = clip(nm);
        re = clip(rm);
        % Co the bo comment o duoi de xem ket qua
        %          subplot(2, 1, 1); imshow(fl);
        %          subplot(2, 1, 2); imshow(re);
        break
    else
        fl = im_texto;
        re = [ ];
    end
end

function img_out = clip(img_in)
    [f c] = find(img_in);
    img_out = img_in(min(f):max(f), min(c):max(c)); % Cat anh