%try 2 and 3 switched around THIS WORKS 
x1 = -53;
y1 = 128;
x2 = 128;
y2 = -53; %-53 should be 
x3 = 309; 
y3 = 128;

M  = 256; 
N = 256; 

% if it worked like i'd think: maar draait hem andersom 
% x1 = 128; 
% y1 = -53;
% x2 = 309; 
% y2 = 128; 
% x3 = 128; 
% y3 = 309; 

r = myAffine(a,x1,y1,x2,y2,x3,y3,M,N,'linear','basic'); % gives the correct rotation matrix of affine X 
figure; 
subplot(121)
imshow(a)
plotParallelogram ( x1 , y1 , x2 , y2 , x3 , y3 ) %% THIS SHOULD BE TURNED % like it is now 
axis on
subplot(122)
imshow(r)


xx1 = 1; 
yy1 = 1;
xx2 = M; 
yy2 = 1;
xx3 = M;
yy3 = N; 


plotParallelogram ( xx1 , yy1 , xx2 , yy2 , xx3 , yy3 )
axis on