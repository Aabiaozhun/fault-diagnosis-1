function [ constraints, coords ] = g006( )
%% A graph which is over-constrained with loops allowed
% But where ranking fails to perform maximum matching

con = [...
    {'v2 dot v4 v5'};...
    {'v2 v3'};...
    {'v3 v5 v4'};...
    {'v4'};...
    {'v3 v5'};...
    {'v3'};...
    ];

constraints = [{con},{'c'}];

coords = [];


end