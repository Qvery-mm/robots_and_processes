function [theta1, d2, theta3] = RPR_IK(x, y, z, R3)
    theta1 = atan2(-x, y);
    cos_t1 = R3(1, 3);
    sin_t1 = R3(2, 3);

    cos_t4 = (R3(3, 1) + R3(3, 2)) / sqrt(2);
    sin_t4 = (R3(3, 1) - R3(3, 2)) / sqrt(2);

    theta3 = vpa(atan2(sin_t4, cos_t4) + pi/4);

    d2 = vpa(sqrt(2)*(10  - z + 5 * sin(theta3)));
end