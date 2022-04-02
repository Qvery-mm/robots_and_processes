function mat = R_(t1, t3)
    t4 = t3 - pi/4;
    mat = zeros(3, 3);

    mat(1, 1) = -sqrt(2)/2 * sin(t1) * (cos(t4) - sin(t4));
    mat(1, 2) = sqrt(2)/2 * sin(t1) * (cos(t4) + sin(t4));
    mat(1, 3) = cos(t1);

    mat(2, 1) = -sqrt(2)/2 * cos(t1) * (sin(t4) - cos(t4));
    mat(2, 2) = -sqrt(2)/2 * cos(t1) * (cos(t4) + sin(t4));
    mat(2, 3) = sin(t1);

    mat(3, 1) = sqrt(2)/2 * (cos(t4) + sin(t4));
    mat(3, 2) = -sqrt(2)/2 * (sin(t4) - cos(t4));
    mat(3, 3) = 0;
end

