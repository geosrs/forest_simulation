function [ neighbors ] = findRadialNeighbors( x, y, extgrid, R, s_cell,radialMask)
%Function to find the neighbors within a radius of the cell x,y
%Inputs: x,y coordinates of cell to find neighbors of
        %extgrid the current extend grid
        %R neighbor radius in meters
        %s_cell size in meters of each cell
    centerDistance = fix(R/s_cell);
    neighbors = [];
    for i = -centerDistance:centerDistance
        for j = -centerDistance:centerDistance
            %if cooridinate is within R of center
                if radialMask(...
                    i + fix((2*centerDistance + 1)/2) + 1,...
                    fix((2*centerDistance + 1)/2) - j + 1)
                    %add to neighbors list
                    neighbors = [neighbors, extgrid(x + i, y + j)];
                end
            
        end
    end 
end