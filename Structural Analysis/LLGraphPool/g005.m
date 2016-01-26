function [ constraints, name, coords ] = g005( )

%% UAV model described in 
%Fravolini, M., Campa, G., & Napolitano, M. (2008).
%Design of Redundancy Relations for Unmanned Aerial Vehicle FDI.
%AIAA Guidance, Navigation and Control Conference and Exhibit, (August), 1–12.
%Retrieved from http://arc.aiaa.org/doi/abs/10.2514/6.2008-7421

name = 'g005 - UAV model from "Design of Redundancy Relations for Unmanned Aerial Vehicle FDI"';

kin = [...
    {'V a b Fx Fy Fz'};...
    {'a V q p r b Fx Fz'};...
    {'b a V p r Fx Fy Fz'};...
    {'p q r L N'};...
    {'p q r M'};...
    {'p q r L N'};...
    {'psi phi q r theta'};...
    {'theta q phi r'};...
    {'phi p psi theta'};...
    {'h u theta v phi w'};...
    ];

dyn = [...
    {'fault Fx V a inp de theta inp Xt'};...
    {'fault Fy V b p r inp da inp dr theta phi'};...
    {'fault Fz V a q inp de theta phi'};...
    {'fault L V b r inp da inp dr'};...
    {'fault M V a q inp de'};...
    {'fault N V b p r inp da inp dr'};...
    {'V u a b'};...
    {'V v a'};...
    {'V w a b'};...
    ];

msr = [...
    {'V msr Vm'};...
    {'a msr am'};...
    {'b msr bm'};...
    {'p msr pm'};...
    {'q msr qm'};...
    {'r msr rm'};...
    {'psi msr psim'};...
    {'theta msr thetam'};...
    {'phi msr phim'};...
    {'h msr hm'};...
    ];

constraints = [...
    {kin},{'k'};...
    {dyn},{'f'};...
    {msr},{'s'};...
    ];

coords = [];

end