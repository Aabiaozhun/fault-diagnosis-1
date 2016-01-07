function [ resp ] = isVariable( this, id )
%ISVARIABLE Answer whether an object is a variable
%   Detailed explanation goes here

index = find(this.variableIdArray==id,1);
if ~isempty(index)
    resp = true;
else
    resp = false;
end

end
