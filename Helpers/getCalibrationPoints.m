function [xy, XYZ] = getCalibrationPoints(nPoints, image)
%npoints must be between 4 and 18
    xy = zeros(nPoints, 2);
    XYZ = zeros(nPoints, 3);
    
    availableCoords = [0,5,5;0,3,5;0,1,5;1,0,5;3,0,5;5,0,5;0,5,3;0,3,3;0,1,3;1,0,3;3,0,3;5,0,3;0,5,1;0,3,1;0,1,1;1,0,1;3,0,1;5,0,1];
    figure; 
    imshow(image)
    
    for i = 1 : nPoints
        XYZ(i,:) = availableCoords(i,:); 
        title(['Get Edgepoints for x = ', num2str(availableCoords(i,1)), ...
            ', y = ', num2str(availableCoords(i,2)), ...
            ', z = ', num2str(availableCoords(i,3))])
        xy(i,:) = ginput(1); 
    end
    
    
end