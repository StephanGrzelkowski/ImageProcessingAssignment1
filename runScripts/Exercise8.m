clear all 
close all
%% Assignment 8 

% calculate projection matrix: 
load('calibrationpoints.mat');
M1 = estimateProjectionMatrix(xy,XYZ);

% do the first cube 
%Create a cube with length c at the origin:

%in the image x grows to right, y to the left, z to the top; 
%center is x - 0.5, y -0.5 z + 1; 
xyz1 = [-0.5;-0.5;0.5];
coord1 = getProjectionCoords(xyz1, 1, M1);

%do the second cube 
xyz2 = [-0.5 ;6.5;6.5];
coord2 = getProjectionCoords(xyz2, 1, M1);


%do the third cube
xyz3 = [4.5;-0.5;3.5];

coord3 = getProjectionCoords(xyz3, 1, M1);


% load image 
img = imread('calibrationpoints.jpg'); 
figure; 
imshow(img)
hold on 
%plot the cubes using a modified subplotFaces
subPlotFacesMod(coord1)
subPlotFacesMod(coord2)
subPlotFacesMod(coord3)

%% create your own xy and XYZ 

% we need at least 4 points that are not in the same direction from the
% center to obtain an estimation for the projection matrix 


%% view1
%create XYZ for 18 points view1: 
view1 = imread('view1.jpg');
[xy, XYZ] = getCalibrationPoints(18,view1);
% als je niet alles zelf wil doen: 
% xy = [190,349.000000000000;226,350.000000000000;262,357.000000000000;304,357.000000000000;332,353.000000000000;364,345.000000000000;190,394.000000000000;225,402.000000000000;263,409.000000000000;302,408.000000000000;334,399.000000000000;362,390.000000000000;192,442.000000000000;226,451.000000000000;263,459.000000000000;303,458.000000000000;333,446.000000000000;363,436.000000000000]
% XYZ zelfde als sectie hiervoor 
M1 = estimateProjectionMatrix(xy,XYZ);

xyz1 = [-0.5;-0.5;0.5];
coord1 = getProjectionCoords(xyz1, 1, M1);

%do the second cube 
xyz2 = [-0.5 ;6.5;6.5];
coord2 = getProjectionCoords(xyz2, 1, M1);


%do the third cube
xyz3 = [4.5;-0.5;3.5];

coord3 = getProjectionCoords(xyz3, 1, M1);


% load image 
img = imread('view1.jpg'); 
figure; 
imshow(img)
hold on 
%plot the cubes using a modified subplotFaces
subPlotFacesMod(coord1)
subPlotFacesMod(coord2)
subPlotFacesMod(coord3)


%% view 2
%create XYZ for 18 points view1: 
view2 = imread('view2.jpg');
[xy, XYZ] = getCalibrationPoints(18,view2);
% als je niet alles zelf wil doen: 
% xy = [142,351.000000000000;175,355.000000000000;210.000000000000,358.000000000000;250,358.000000000000;284,351.000000000000;319,343.000000000000;144,399.000000000000;177,405.000000000000;216.000000000000,409.000000000000;253,409.000000000000;285,400.000000000000;319,390.000000000000;133,447.000000000000;166,449.000000000000;216.000000000000,462.000000000000;257,459.000000000000;292,447.000000000000;321,436.000000000000]
% XYZ zelfde als sectie hiervoor

M1 = estimateProjectionMatrix(xy,XYZ);

xyz1 = [-0.5;-0.5;0.5];
coord1 = getProjectionCoords(xyz1, 1, M1);

%do the second cube 
xyz2 = [-0.5 ;6.5;6.5];
coord2 = getProjectionCoords(xyz2, 1, M1);


%do the third cube
xyz3 = [4.5;-0.5;3.5];

coord3 = getProjectionCoords(xyz3, 1, M1);


% load image 
img = imread('view2.jpg'); 
figure; 
imshow(img)
hold on 
%plot the cubes using a modified subplotFaces
subPlotFacesMod(coord1)
subPlotFacesMod(coord2)
subPlotFacesMod(coord3)

%% view 3

%create XYZ for 18 points view1: 
view3 = imread('view3.jpg');
[xy, XYZ] = getCalibrationPoints(18,view3);

% als je niet alles wil clicked 4 * 18 : 
% xy = [190,353.000000000000;221,356.000000000000;252,360.000000000000;293,361.000000000000;331,353.000000000000;364,345.000000000000;193,401.000000000000;223,406.000000000000;255,412.000000000000;295,413.000000000000;332,402.000000000000;367,393.000000000000;194,449.000000000000;225,455.000000000000;258,464.000000000000;295,463.000000000000;335,452.000000000000;368,441.000000000000]
% XYZ is gelijk als hiervoor bij 18 punten 

M1 = estimateProjectionMatrix(xy,XYZ);

xyz1 = [-0.5;-0.5;0.5];
coord1 = getProjectionCoords(xyz1, 1, M1);

%do the second cube 
xyz2 = [-0.5 ;6.5;6.5];
coord2 = getProjectionCoords(xyz2, 1, M1);


%do the third cube
xyz3 = [4.5;-0.5;3.5];

coord3 = getProjectionCoords(xyz3, 1, M1);


% load image 
img = imread('view3.jpg'); 
figure; 
imshow(img)
hold on 
%plot the cubes using a modified subplotFaces
subPlotFacesMod(coord1)
subPlotFacesMod(coord2)
subPlotFacesMod(coord3)

%% view 4 
%create XYZ for 18 points view1: 
view4 = imread('view4.jpg');
[xy, XYZ] = getCalibrationPoints(18,view4);

% als je niet alles wil clicked 4 * 18 : 
% xy = [135,359.000000000000;165,363.000000000000;191,369.000000000000;233.000000000000,367.000000000000;271,361.000000000000;313,348.000000000000;140,406.000000000000;167,414.000000000000;197,421.000000000000;237.000000000000,421.000000000000;276,410.000000000000;318,399.000000000000;145,454.000000000000;171,462.000000000000;200,469.000000000000;240,470.000000000000;279,458.000000000000;317,446.000000000000]
% XYZ is gelijk als hiervoor bij 18 punten 

M1 = estimateProjectionMatrix(xy,XYZ);

xyz1 = [-0.5;-0.5;0.5];
coord1 = getProjectionCoords(xyz1, 1, M1);

%do the second cube 
xyz2 = [-0.5 ;6.5;6.5];
coord2 = getProjectionCoords(xyz2, 1, M1);


%do the third cube
xyz3 = [4.5;-0.5;3.5];

coord3 = getProjectionCoords(xyz3, 1, M1);


% load image 
img = imread('view4.jpg'); 
figure; 
imshow(img)
hold on 
%plot the cubes using a modified subplotFaces
subPlotFacesMod(coord1)
subPlotFacesMod(coord2)
subPlotFacesMod(coord3)
