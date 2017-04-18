function subPlotFacesMod(pFaces)
    hold on;
    for i = 1:size(pFaces, 1)
        for j = 1:size(pFaces,2)
        % plot each face
            plot(pFaces(i,:,1), pFaces(i,:,2), '.-', 'MarkerSize', 15, 'Color', 'b', 'LineWidth', 2)
        end
    end
    hold off;
end