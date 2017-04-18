function coord = getProjectionCoords(xyz, sizeCube, M)

faces = createCube(sizeCube, xyz);

coord = zeros(size(faces,1),size(faces,2),2); 

for i = 1 : size(faces,1)
    for j = 1 :  size(faces,2)
        xyz = [faces(i,j,1), faces(i,j,2), faces(i,j,3), 1]; 
        XY = M*xyz';
        coord(i,j,1) = XY(1) / XY(3);
        coord(i,j,2) = XY(2) / XY(3); 
    end
end