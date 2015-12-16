function s=multisetunion(s1,s2)
% Internal function, no help text written

% Author(s): Erik Frisk, Mattias Krysander
% Revision: 0.1, Date: 2007/09/01

% Copyright (C) 2007 Erik Frisk and Mattias Krysander
%
% This file is part of SensPlaceTool.
% 
% SensPlaceTool is free software; you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation; either version 2 of the License, or
% (at your option) any later version.
% 
% SensPlaceTool is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
%   
% You should have received a copy of the GNU General Public License
% along with SensPlaceTool; if not, write to the Free Software
% Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA

foo = union(s1,s2);
bar = {s1{:}, s2{:}};
s = {};
for k=1:length(foo)
  n = sum(ismember(bar,foo(k)));
  for l=1:n
    s(end+1) = foo(k);
  end
end