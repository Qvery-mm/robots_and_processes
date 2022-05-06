robot1(pi/2, -pi/2, pi/2,  pi/3, pi/2, ...
       0.1 ,  0.3 , 0.2 , -0.1 , 0.6)


robot2(pi/2, -pi/2, pi/4, -pi/6, pi/8, -pi/3, ...
       0.1, -0.2, 0.3, 0.1, 0.4, -0.6)













%eps = 1e-1;
%[P0, P1, P2, P3, P4, P5, P6, Z0, Z1, Z2, Z3, Z4, Z5, Z6] = robot2(0, 0, 0, 0, 0, 0, ...
%      0.1, -0.2, 0.3, 0.1, 0.4, -0.6);

%assert(abs(norm(P0 - [0; 0; 0])) < eps);
%assert(abs(norm(Z0 - [0; 0; 1])) < eps);

%assert(abs(norm(P1 - [0; 0; 13])) < eps);
%assert(abs(norm(Z1 - [0; -1; 0])) < eps);

%assert(abs(norm(P2 - [8; 2.5; 13])) < eps);
%assert(abs(norm(Z2 - [0; -1; 0])) < eps);


%assert(abs(norm(P3 - [8; 5; 21])) < eps);
%assert(abs(norm(Z3 - [0; 0; 1])) < eps);

%assert(abs(norm(P4 - [8; 5; 21])) < eps);
%assert(abs(norm(Z4 - [0; -1; 0])) < eps);

%assert(abs(norm(P5 - [8; 5; 23.5])) < eps);
%assert(abs(norm(Z5 - [0; 0; 1])) < eps);

%assert(abs(norm(P6 - [8; 5; 23.5])) < eps);



%assert(abs(norm(P0 - [0; 0; 0])) < eps);
%assert(abs(norm(Z0 - [0; 0; 1])) < eps);

%assert(abs(norm(P1 - [0; 0; 13])) < eps);
%assert(abs(norm(Z1 - [1; 0; 0])) < eps);

%assert(abs(norm(P2 - [-2.5; 0; 5])) < eps);
%assert(abs(norm(Z2 - [1; 0; 0])) < eps);

%assert(abs(norm(P3 - [-5; 5.657; 10.657])) < eps);
%assert(abs(norm(Z3 - [0; 1/sqrt(2); 1/sqrt(2)])) < eps);

%assert(abs(norm(P4 - [-5; 5.657; 10.657])) < eps);
%assert(abs(norm(Z4 - [0.8662; -0.3534; 0.3534])) < eps);

%assert(abs(norm(P5 - [-5.478; 6.704; 12.876])) < eps);
%assert(abs(norm(Z5 - [-0.1911; 0.4192; 0.8875])) < eps);

%assert(abs(norm(P6 - [-5.478; 6.704; 12.876])) < eps);
        