classdef Beech < Tree
    properties
        G = 87.7; %Parameter that determines how early in its age (or size) a tree achieves most of its growth
        Dmax = 160;	%Maximum diameter at breast height (cm)
        Hmax = 3660;	%Maximum height (cm)
        AGEmax = 366;	%Maximum age (years)
        C = 2.200;	%Constant of proportionality relating leaf area to tree diameter
        ALmin = 0.00;	%Minimum proportion of incident sunlight needed for regeneration
        ALmax = 0.90; %Maximum proportion of incident sunlight needed for regeneration
    end
end