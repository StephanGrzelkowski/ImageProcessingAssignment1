function r = myAffine ( image , x1 , y1 , x2 , y2 , x3 , y3 , M , N , method, border )
r = zeros (N , M ); % allocate new image of correct size
% calculate X ( insert code for this )
xx1 = 1; 
yy1 = 1; 
xx2 = N;
yy2 = 1; 
xx3 = 1; 
yy3 = M; 
A = [ x1 , x2 , x3 ; y1 , y2 , y3 ; 1 , 1 , 1];
B = [ xx1 , xx2 , xx3 ; yy1 , yy2 , yy3 ];
X = B / A ;

for xa = 1: M
    for ya = 1: N
        % calculate x and y ( insert code for this )
        xxyy = X * [xa;ya;1];
        x = xxyy(1);
        y = xxyy(2); 
        r ( ya , xa ) = pixelValue ( image , x , y , method, border );
    end
end

figure; imshow(r) 
end