function mat = robot1(theta1, theta2, theta3, theta4, theta5, v1, v2, v3, v4, v5)
    
    A1 = transform_(0, pi/2, 3, theta1);
    A2 = transform_(5.75, pi, 0, -theta2 + pi/2);
    A3 = transform_(7.375, 0, 0, theta3 + pi/2);
    A4 = transform_(4.125, 0, 0, theta4);
    A4_transparent = transform_(0, pi/2 ,0, pi/2);
    A5 = transform_(0, 0, 0, theta5);

    T01 = A1;
    T02 = T01 * A2;
    T03 = T02 * A3;
    T04 = T03 * A4;
    T05 = T04 * A4_transparent * A5;

    P0 = [0;0;0];
    P1 = T01(1:3, 4);
    P2 = T02(1:3, 4);
    P3 = T03(1:3, 4);
    P4 = T04(1:3, 4);
    P5 = T05(1:3, 4);

    Z0 = [0;0;1];
    Z1 = T01(1:3, 3);
    Z2 = T02(1:3, 3);
    Z3 = T03(1:3, 3);
    Z4 = T04(1:3, 3);
    Z5 = T05(1:3, 3);

    Jp1 = cross(Z0, P5 - P0);
    J01 = Z0;
    Jp2 = cross(Z1, P5 - P1);
    J02 = Z1;
    Jp3 = cross(Z2, P5 - P2);
    J03 = Z2;
    Jp4 = cross(Z3, P5 - P3);
    J04 = Z3;
    Jp5 = cross(Z4, P5 - P4);
    J05 = Z4;

    J = [Jp1 Jp2 Jp3 Jp4 Jp5; J01 J02 J03 J04 J05];

    mat = J * [v1; v2; v3; v4; v5];
    mat  = [mat(1:3), mat(4:6)];

    
end