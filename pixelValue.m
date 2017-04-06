function color = pixelValue ( image , x , y , method )
% pixel value at real coordinates
if inImage ( size ( image ) ,x , y )
% do the interpolation

    switch ( method )
        case 'nearest'
        % Do nearest neighbour
            x_new = floor(x+0.5);
            y_new = floor(y+0.5);
            color = image(x_new, y_new);
            return;

        case 'linear'
        % Do bilinear interpolation
            k = floor(x + 0.5);  
            l = floor(y + 0.5);
            a = x - k; 
            b = y - l; 
            color = (1-a)*(1-b) * image(k,l) + ... 
                    (1-a)* b *image(k,l+1) + ...
                    a * b * image(k+1,l+1) + ...
                    a * (1-b) * image(k+1, l); 
            return
    end %end switch
        
else
% take nearest border pixel 
    %predeclare x and y for the case that they are in the picture
    x_new = floor(x + 0.5); 
    y_new = floor(y + 0.5); 
    
    if x > size(image,1) 
        x_new = size(image,1); 
    end
    
    if y > size(image,2)
        y_new = size(image,2);
    end
    color = image(x_new,y_new); 
    
        
end
