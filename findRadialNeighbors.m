function [ neighbors ] = findRadialNeighbors( x, y, extgrid, R, s_cell)
%Function to find the neighbors within a radius of the cell x,y
%Inputs: x,y coordinates of cell to find neighbors of
        %extgrid the current extend grid
        %R neighbor radius in meters
        %s_cell size in meters of each cell
    centerDistance = fix(R/s_cell);
    for i = -centerDistance:centerDistance
        for j = -centerDistance:centerDistancesideLength
            %if cooridinate is within R of center
            if i^2 + j^2 <= R^2/s_cell^2
                %add to neighbors list
                neighbors = [neigbors, extgrid(x + i, y + j)];
            end
        end
    end 
end