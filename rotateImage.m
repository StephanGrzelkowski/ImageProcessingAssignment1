function rotatedImage = rotateImage ( image , angle , method )
%rotation matrix
angle = deg2rad(-angle);
R = [cos(angle), -sin(angle); sin(angle), cos(angle)];

%obtain indeces needed for interpolation
image_new = nan(size(image,1),size(image,2));
% for i = 1 : size(image,1)
%     for j = 1 : size(image,2)
%         point_new = R * [i; j];
%         image_new(i,j) = pixelValue(image,point_new(1),point_new(2), 'linear', 'basic');
%     end
% end
x_vec = 1 : size(image,1);
y_vec = 1 : size(image,2);
x_mat = repmat(x_vec,size(image,2),1);
x_mat = reshape(x_mat,[1,size(image,2)*size(image,1)]);
y_mat = repmat(y_vec, 1,size(image,1));
coord = [x_mat; y_mat; ones(1,size(image,2)*size(image,1))];
R_affine = [cos(angle), -sin(angle), 0; sin(angle), cos(angle), 0; 0, 0, 1]; 
new_coord = R_affine*coord;
rotatedImage = nan(size(image,1),size(image,2));
value_coord = zeros(1,size(image,2)*size(image,1)); 
for i = 1 : size(new_coord,2)
    value_coord = pixelValue(image,new_coord(1,i),new_coord(2,i),'linear','nearest');
    image_new(x_mat(i),y_mat(i)) = value_coord;
end
rotatedImage = image_new;
end