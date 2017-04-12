function rotatedImage = rotateImageForLoop ( image , angle , method, border )
angle = deg2rad(-angle);
R = [cos(angle), -sin(angle); sin(angle), cos(angle)];

image_new = nan(size(image,1),size(image,2));
for i = 1 : size(image,1)
    for j = 1 : size(image,2)
        point_new = R * [i; j];
        image_new(i,j) = pixelValue(image,point_new(1),point_new(2), method, border);
    end
    
    
end
rotatedImage = image_new;
end