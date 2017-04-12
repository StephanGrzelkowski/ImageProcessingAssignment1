close all 
clear all
%% Exercise 4

%%  
%my affine has been implemented using method for interpolation method and
%border for type of border filling. 

%% 45° rotation

%results of the myAffine function are shown here

a = im2double(imread('cameraman.tif'));

% Data points in original image to be changed to the changed image
%Parameters to myAffine. 
x1 = -53;
y1 = 128;
x2 = 128;
y2 = -53;  
x3 = 309; 
y3 = 128;

M = 256; 
N = 256; 

r = myAffine(a,x1,y1,x2,y2,x3,y3,M,N,'linear','basic'); 

figure; 
subplot(121)
imshow(a)
plotParallelogram ( x1 , y1 , x2 , y2 , x3 , y3 )  
axis on
subplot(122)
imshow(r)

%Plot the parallelogram in the rotated image
xx1 = 1; 
yy1 = 1;
xx2 = M; 
yy2 = 1;
xx3 = M;
yy3 = N; 

plotParallelogram ( xx1 , yy1 , xx2 , yy2 , xx3 , yy3 )
axis on