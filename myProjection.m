function projection = myProjection(image, x1 , y1 , x2 , y2 , x3 , y3 , x4 , y4 , m , n , method, border)
    projection = zeros(n , m); % allocate new image of correct size
    % calculate projection matrix
    
    uv = [1, 1; 1, m; n, 1; n, m];
    xy = [x1, y1; x2, y2; x3, y3; x4, y4];
    
    projMatrix = createProjectionMatrix(xy, uv);
    
    for xIndex = 1: m
        for yIndex = 1: n
            % calculate x and y
            xxyy = projMatrix * [xIndex;yIndex;1];
            xxyy = xxyy / xxyy(3);
            x = xxyy(1);
            y = xxyy(2); 
            
            projection ( yIndex , xIndex ) = ...
            pixelValue ( image , x , y , method, border);
        end
    end
end