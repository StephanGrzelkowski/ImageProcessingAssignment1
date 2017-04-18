close all 
clear all

%% Assignment 5
% createProjectionMatrix was build and implemented into myProjection

%This projection matrix is the same calculated above, as we end up with the same kernel
%% 
% myProjection was implemented using the createProjectionMatrix function


%%
%load image 
a = imread('flyers.png'); 

% convert image 
a = im2double(rgb2gray(a)); 

%choose the 4 edgepoints of the image in following: 
%left top, left bottom, right top, right bottom
figure;
imshow(a)
[x, y] = ginput(4); 
%example x and y: x = [572, 353, 823,569] ; y = [190;551;177;588]

projection = myProjection(a, x(1),y(1), x(2),y(2),x(3),y(3),x(4),y(4),400,600,'linear', 'basic');

figure; 
subplot(121)
imshow(a)
title('Original')
subplot(122)
imshow(projection) 
title('Projection')
