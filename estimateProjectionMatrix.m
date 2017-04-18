function [M1]  = estimateProjectionMatrix(xy, XYZ)
    % Calculation of projection Matrix
    x = XYZ(:, 1);
    y = XYZ(:, 2);
    z = XYZ(:, 3);
    % we cannot use x' and y' in Matlab because ' means transposed
    u = xy(:, 1);
    v = xy(:, 2);
    o = ones(size(x));
    zero = zeros(size(x));
    Aoddrows = [x, y, z, o, zero, zero, zero, zero, -u .* x, -u .* y, -u .* z , -u];
    Aevenrows = [zero, zero, zero, zero, x, y, z, o, -v.* x, -v.* y, -v .* z, -v];
    A = [Aoddrows; Aevenrows];

    % Do Singular Value Decomposition to obtain m
    [U, D, V] = svd(A);
    m = V(:, end);
    % Reshape m into the 3x4 projection matrix M
    % seems like the line of code in the book gives the wrong line up of
    % parameters m 
    % 
    %M = reshape(m, 3, 4)';
    M1 = reshape(m,[4,3])'; 
end