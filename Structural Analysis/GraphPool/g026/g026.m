classdef g026 < model
% model for Small Linear system, taken from Fault Diagnosis Toolbox
% Original i: Mattias, Krysander and Erik Frisk, "Sensor placement for fault 
%  diagnosis." IEEE Transactions on Systems, Man and Cybernetics, 
%  Part A: Systems and Humans (2008): 1398-1410.

% Set up with the 2nd choice of sensor, as presented in the exaple script

    methods
        function this = g026()
            this.name = 'g026';
            this.description = 'Small Linear system, taken from Fault Diagnosis Toolbox';
            
            con = [...
                {'dot_x1 x1 x2 x5'};...
                {'dot_x2 x2 x3 x4'};...
                {'fault dot_x3 x3 x5'};...
                {'fault dot_x4 x4 x5'};...
                {'fault dot_x5 x5 msr u'};...
                ];
            
            der = [...
                {'int dot_x1 dot x1'};...
                {'int dot_x2 dot x2'};...
                {'int dot_x3 dot x3'};...
                {'int dot_x4 dot x4'};...
                {'int dot_x5 dot x5'};...
                ];
                
            msr = [...
                {'fault msr zx1 x1'};...
                {'fault msr z2x1 x1'};...
                {'fault msr zx4 x4'};...
                ];
            
            this.constraints = [...
                {con},{'c'};...
                {der},{'d'};...
                {msr},{'s'};...
                ];
            
            this.coordinates = [];
            
        end
        
    end
    
end