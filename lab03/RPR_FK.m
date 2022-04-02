function [mat, T3] = RPR_FK(theta1, d2, theta3)
    
    A1             = transform_(0, -pi/2, 10,            theta1);
    A1_transparent = transform_(0, -pi/4,  0,                 0);
    A2             = transform_(0,  pi/2, d2,              pi/2);
    A3             = transform_(5,     0,  0, theta3 + 3 * pi/4);

    T1 = A1;
    T2 = T1 * A1_transparent * A2;
    T3 = T2 * A3;
    T3 = vpa(T3);

    v0 = [0; 0; 0; 1];
    v1 = T1 * v0;
    v2 = T2 * v0;
    v3 = T3 * v0;

    mat = zeros(4, 3);
    mat(1, :) = v0(1:3);
    mat(2, :) = v1(1:3);
    mat(3, :) = v2(1:3);
    mat(4, :) = v3(1:3);
    
    T3 = T3(1:3, 1:3);
        
end