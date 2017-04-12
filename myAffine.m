function r = myAffine ( image , x1 , y1 , x2 , y2 , x3 , y3 , M , N , method, border )
r = zeros (N , M ); % allocate new image of correct size WAAROM SWITCH IN BOOK 
% calculate X ( insert code for this )
% geef deze aan in normaal x and y coordinate system 
xx1 = 1; 
yy1 = 1; 
xx2 = 1;
yy2 = M; 
xx3 = M; 
yy3 = N; 
A = [ x1 , x2 , x3 ; y1 , y2 , y3 ; 1 , 1 , 1];
B = [ xx1 , xx2 , xx3 ; yy1 , yy2 , yy3 ];
X = B / A;

for xa = 1: M
    for ya = 1: N
        % calculate x and y ( insert code for this )
        xxyy = X * [xa;ya;1]; % gives the rotated coordinates
        x = xxyy(1);
        y = xxyy(2); 
        r ( ya , xa ) = pixelValue ( image , x , y , method, border ); % Eelco: waarom is ya and xa andersom dubbele switch
    end
end

%figure; imshow(r) 
end