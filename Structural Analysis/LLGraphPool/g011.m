function [ constraints, name, coords ] = g011()
%% Longitudinal airplane model
% Found in
% R. Beard Book, p.83

name = 'Linearized longitudinal airplane model found in R. Beard book, p.83';

con = [...
    {'fault u_dot r v w q theta Va a q inp deltae inp deltat'};...
    {'fault w_dot q u p v theta phi Va a inp deltae'};...
    {'fault q_dot r p Va a q inp deltae'};...
    {'theta_dot q phi r'};...
    {'h_dot u theta v phi w inp deltae'};...
    {'Va u v w'};...
    {'a w u'};...
    ];

der = [...
    {'int u_dot dot u'};...
    {'int w_dot dot w'};...
    {'int q_dot dot q'};...
    {'int theta_dot dot theta'};...
    ];

msr = [...
    {'fault msr y1 p'};...
    {'fault msr y2 q'};...
    {'fault msr y3 r'};...
%     {'fault msr y4 theta'};...
    {'fault msr y5 Va'};...
    {'fault msr y6 a'};...
    ];

constraints = [...
    {con},{'c'};...
    {der},{'d'};...
    {msr},{'s'};...
    ];

coords = [];


end

