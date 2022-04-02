% test 1
[pos, R] = RPR_FK(0, 5, 0)
[theta1, d2, theta3] = RPR_IK(pos(4, 1), pos(4, 2), pos(4, 3), R)
[pos_ik, R_ik] = RPR_FK(theta1, d2, theta3)

% test 2
[pos, R] = RPR_FK(pi/6, -10, pi/8)
[theta1, d2, theta3] = RPR_IK(pos(4, 1), pos(4, 2), pos(4, 3), R)
[pos_ik, R_ik] = RPR_FK(theta1, d2, theta3)