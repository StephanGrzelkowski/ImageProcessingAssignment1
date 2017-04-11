function rotatedImage = rotateImage ( image , angle , method, border )
%rotation matrix
angle = deg2rad(-angle);


% calculate the added length of rotations
% extra rows 
lengthr = sin(angle) * size(image,2);
absRows = ceil( abs(lengthr));
% extra columns 
lengthc = cos(deg2rad(90) - angle) * size(image,1); 
absColumns = ceil(abs(lengthc));

prependr = zeros(absRows,size(image,2));
prependedImage = [prependr; image]; 


prependc = zeros(size(prependedImage,1),absColumns);
if lengthc > 0 
    prependedImage = [prependc prependedImage];
else 
    prependedImage = [prependedImage prependc]; 
end

%image = prependedImage; 
x_vec = 1 : size(image,1);
y_vec = 1 : size(image,2);

x_mat = repmat(x_vec,size(image,2),1);
x_mat = reshape(x_mat,[1,size(image,2)*size(image,1)]);

y_mat = repmat(y_vec, 1,size(image,1));
coord = [x_mat; y_mat; ones(1,size(image,2)*size(image,1))];
R_affine = [cos(angle), -sin(angle), 0; sin(angle), cos(angle), 0; 0, 0, 1]; 
new_coord = R_affine*coord;
new_image = ones(size(prependedImage));
for i = 1 : size(new_coord,2)
    value_coord = pixelValue(image,y_mat(i),x_mat(i),method,border);
    %value_coord = image(y_mat(i),x_mat(i));
    %rotatedImage(x_mat(i)-ceil( abs(lengthr)),y_mat(i)+ceil( abs(lengthc))) = value_coord;
    
    
    %ROWS ARE THE Y (row 2 of new_coord)!!!!!! 
    
    
    new_image(round(new_coord(2,i)+absRows)+1,round(new_coord(1,i))) = value_coord; 
   
    %eerst de roteerde image maken en dan interpolatie met de nieuwe image
    %value_coord = pixelValue(new_image,round(new_coord(2,i)+absRows),round(new_coord(1,i)),method,border);
    %new_image(round(new_coord(2,i)+absRows),round(new_coord(1,i))) = value_coord;
end
rotatedImage = new_image;
figure; 
imshow(rotatedImage)
end