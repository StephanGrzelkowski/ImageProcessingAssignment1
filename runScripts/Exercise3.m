close all 
clear all 

%% Exercise 3
% The rotation is implemented in rotateImage and should be called with the
% angle in degrees
% Here we doe a simple 45 degree rotation
% This was first done using a for loop but the function was later changed
% to implement a faster affine transformation for the rotation. The old
% version can be found in /helpers/rotateImageForLoop.m
%
% border expansion is also already implemented in the finished version 
% The below code shows results of the first three subquestions 

a = im2double(imread('cameraman.tif')); 
r = rotateImage(a,45, 'linear','basic'); 
figure; 
imshow(r); 


%% Time
% The interpolation methods are compared using a small image rotation of 4°

angle = 4;
tic; 
rLinear = rotateImage(a,angle, 'linear', 'basic'); 
timeLinear = toc

tic; 
rNearest = rotateImage(a,angle, 'nearest','basic'); 
timeNearest = toc

% As we can see the nearest interpolation methods is faster than the linear
% interpolation method

%% Image differences 
angle = 4;
 

%difference for linear interpolation and original

%rotation
r = rotateImage(a,angle, 'linear','basic'); 
figure; imshow(r)
%rotate back 
doubleBack = rotateImage(r,-angle,'linear','basic');

%crop back to original size
cropRows = (size(doubleBack,1) - size(a,1))/2;
cropColumns = (size(doubleBack,2) - size(a,2))/2; 

doubleBack = doubleBack(cropRows + 1 : end-cropRows,cropColumns + 1 : end-cropColumns);

%sum square of differences
diffLinear = 0;
for i = size(doubleBack,1)
    for j = size(doubleBack,2) 
        diffLinear= diffLinear + (doubleBack(i,j) - a(i,j)) ^2;
    end
end

% start plot
figure; 
subplot(131) 
imshow(a)
title('original')
subplot(132)
imshow(doubleBack)
title({'Double rotated image linear Interpolation'; 'Difference to original : '; num2str(diffLinear)})

% do rotation for nearest interpolation

%rotation
r = rotateImage(a,angle, 'nearest','basic'); 
%rotate back 
doubleBack = rotateImage(r,-angle,'nearest','basic');

%crop back to original size
cropRows = (size(doubleBack,1) - size(a,1))/2;
cropColumns = (size(doubleBack,2) - size(a,2))/2; 

doubleBack = doubleBack(cropRows + 1 : end-cropRows,cropColumns + 1 : end-cropColumns);
diffNearest = 0; 
for i = size(doubleBack,1)
    for j = size(doubleBack,2) 
        diffNearest= diffNearest + (doubleBack(i,j) - a(i,j))^2;
    end
end

subplot(133)
imshow(doubleBack)
title({'Double rotated image nearest Interpolation.'; 'Difference to original : '; num2str(diffNearest)})


% after double back rotation no difference is visual between the images
% although the distance calculation for the linear interpolation tells us
% something else
% curiously there seems to be no difference in images of nearest
% interpolation methods after back rotation and the original. We tested
% this using different angles 




