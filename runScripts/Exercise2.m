clear all 
close all

%% assignment 2 
%% 
% pixelValue    function takes inputs: 
% image :       original image to look up data points, 
% x, 
% y :           coordinates of the interpolated point 
% method:       'linear' or 'nearest' for interpolation using the two different
%               methods for interpolation 
%border:        Different ways to assign pixel values outside the original
%               image
%               'basic': creates black border
%               'nearest': gets nearest border pixel
%               'duplicates': periodic image border using modulus
%% 
%The interpolation methods are implemented in the function
%pixelValue 
%The function with nearest neighbor interpolation can be called with the
%method 'nearest' or linear interpolation using 'linear' as method
%argument. 

%The 'basic' border method assigns coordinates that are outside the image with
%black values

%%  
% Test using profile function 
a = imread ('autumn.tif'); 
a = im2double ( rgb2gray ( a ) );


plot ( profile ( a , 100 , 100 , 120 , 120 , 100 , 'linear', 'basic') );

%plots different methods 
figure; % this resets the (get) current figure
hold on ; % overlay on current figure
plot ( profile ( a , 100 , 100 , 120 , 120 , 200 , 'linear', 'basic') , 'b' );
plot ( profile ( a , 100 , 100 , 120 , 120 , 200 , 'nearest', 'basic') , 'r' );
hold off ;

%%
%different border methods are implemented using different calls of the
%border argument to pixelValue. For a detailed explanation see above. 
