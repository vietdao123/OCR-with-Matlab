% cree templates
% caractere
% ---------------------------------
A=imread('data/A.bmp');B=imread('data/B.bmp');
C=imread('data/C.bmp');D=imread('data/D.bmp');
E=imread('data/E.bmp');F=imread('data/F.bmp');
G=imread('data/A.bmp');H=imread('data/A.bmp');
I=imread('data/A.bmp');J=imread('data/A.bmp');
K=imread('data/A.bmp');L=imread('data/A.bmp');
M=imread('data/A.bmp');N=imread('data/A.bmp');
O=imread('data/A.bmp');P=imread('data/A.bmp');
Q=imread('data/A.bmp');R=imread('data/A.bmp');
S=imread('data/A.bmp');T=imread('data/A.bmp');
U=imread('data/A.bmp');V=imread('data/A.bmp');
W=imread('data/A.bmp');X=imread('data/A.bmp');
Y=imread('data/A.bmp');Z=imread('data/A.bmp');
% numero
% ----------------------------
one=imread('data/1.bmp');two=imread('data/2.bmp');
three=imread('data/3.bmp');four=imread('data/4.bmp');
five=imread('data/5.bmp');six=imread('data/6.bmp');
sevent=imread('data/7.bmp');eight=imread('data/8.bmp');
nine=imread('data/9.bmp');zero=imread('data/0.bmp');
%----------------------------------------------------------------------
letter = [A B C D E F G H I J K L M N O P Q R S T U V W X Y Z];
number = [one two three four five six sevent eight nine zero];
character=[letter number];
templates=mat2cell(character, 42, [24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24]);
save('templates','templates')
clear all       