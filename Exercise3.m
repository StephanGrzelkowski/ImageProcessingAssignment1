%% Exercise 3

a = im2double(imread('cameraman.tif')); 
r = rotateImage(a,45, 'linear','basic'); 
figure; 
imshow(r); 


%% Time

angle = 4;
tic; 
rLinear = rotateImage(a,angle, 'linear', 'basic'); 
timeLinear = toc

tic; 
rNearest = rotateImage(a,angle, 'nearest','basic'); 
timeNearest = toc

% Nearest is slightly faster 

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




