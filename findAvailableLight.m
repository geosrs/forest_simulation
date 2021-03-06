function [ AL ] = findAvailableLight(tree,neighborTrees, AL0,k)
%Finds the available light for a tree
%	inputs: tree - the tree in consideration
           %neighbors - the tree's neighbors
           %AL0 - the light incident above canopy
           %k - the light extinction coeficient
   %returns: the Available Light for the tree
   %shading leaf area index
   SLAI = 0;
   %calculate SLAI = sum of leaf areas of all trees greater than tree
   %considered over the neighborhood size
   if(~isempty(neighborTrees))
       for n = 1:length(neighborTrees)
           if neighborTrees(n).LA > tree.LA %compare leaf areas
            SLAI = SLAI + neighborTrees(n).LA;
           end
       end
       SLAI = SLAI/length(neighborTrees);
   end
   
   %divide by neighborhood size
   %calculate Al
   %if neighborhood has no tree slai = 0 e^0 = 1
   AL = AL0 * exp( -(k * SLAI));
end
