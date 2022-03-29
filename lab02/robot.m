function mat = robot(theta1, theta2, theta3, theta4, theta5, g)
    
    A1 = transform(0, pi/2, 3, theta1);
    A2 = transform(5.75, pi, 0, -theta2 + pi/2);
    A3 = transform(7.375, 0, 0, theta3 + pi/2);
    A4 = transform(4.125, 0, 0, theta4);
    A4_transparent = transform(0, pi/2 ,0, pi/2);
    A5 = transform(0, 0, 0, theta5);

    T1 = A1;
    T2 = T1 * A2;
    T3 = T2 * A3;
    T4 = T3 * A4;
    T5 = T4 * A4_transparent * A5;

    
    mat = zeros(10, 3);
    a0 = [0; 0; 0; 1];

    v1 = a0;
    v2 = T1 * a0;
    v3 = T2 * a0;
    v4 = T3 * a0;
    v5 = T4 * a0;

    e = 1.125;
    a1 = [0; 0; -e; 1];
    a2 = [g/2; 0; -e; 1];
    a3 = [-g/2; 0; -3; 1];
    a4 = [g/2; 0; 0; 1];
    a5 = [-g/2; 0; 0; 1];

    v6 = T5 * a1;
    v7 = T5 * a2;
    v8 = T5 * a3;
    v9 = T5 * a4;
    v10 = T5 * a5;

    mat(1, :) = v1(1:3);
    mat(2, :) = v2(1:3);
    mat(3, :) = v3(1:3);
    mat(4, :) = v4(1:3);
    mat(5, :) = v5(1:3);
    mat(6, :) = v6(1:3);
    mat(7, :) = v7(1:3);
    mat(8, :) = v8(1:3);
    mat(9, :) = v9(1:3);
    mat(10, :) = v10(1:3);
end