%%%%%%%%%%%%%%%%%%%%%%
% Task 1
disp("Task 1")
a = quaternion.create_random_unit();
b = quaternion.create_random_unit();
print(a)
print(b)
disp(a.norm())
disp(b.norm())
c = a * b;
print(c)
disp(c.norm())

%%%%%%%%%%%%%%%%%%%%%%
% Task 2
disp("Task 2")
disp("Nothing to print, see plot.")
%ax = axis;

a = 2 * (rand(3, 1) - 0.5);
a = a / sqrt(norm(a));

q = quaternion.create_random_unit();
mat = q.to_matrix();
b = mat * a;
hold on;
grid on;

plot3([0; 1],[0; 0],[0; 0], 'Color', 'r');
text(1, 0, 0, 'x');

plot3([0; 0],[0; 1],[0; 0], 'Color', 'g');
text(0, 1, 0, 'y');

plot3([0; 0],[0; 0],[0; 1], 'Color', 'b');
text(0, 0, 1, 'z');

plot3([0, a(1)], [0, a(2)], [0, a(3)], 'Color', 'k', 'LineStyle','--');
text(a(1), a(2), a(3), ['(', num2str(a(1)), ', ', num2str(a(2)), ', ', num2str(a(3)), ')'])

plot3([0, b(1)], [0, b(2)], [0, b(3)], 'Color', 'k', 'LineStyle',':');
text(b(1), b(2), b(3), ['(', num2str(b(1)), ', ', num2str(b(2)), ', ', num2str(b(3)), ')'])

plot3(0, 0, 0, '.k');
%hold off;

%%%%%%%%%%%%%%%%%%%%%%%
% Task 3
disp("Task 3")
%3.1
omega = [-0.1457; 0.5976; -0.7884];
theta = 3.5112;
q = quaternion.from_angle(theta, omega);
print(q);
%3.2
omega = [0.4928; 0.5435; 0.6795];
theta = 3.5366;
q = quaternion.from_angle(theta, omega);
print(q);
%3.3
omega = [-0.1380; -0.8528; -0.5037];
theta = 6.18;
q = quaternion.from_angle(theta, omega);
print(q);
%3.4
omega = [0.0351; 0.5640; -0.8251];
theta = 2.4076;
q = quaternion.from_angle(theta, omega);
print(q);

%%%%%%%%%%%%%%%%%%%%%%%%%%
% Task 4
disp("Task 4");
%4.1
q = quaternion(-0.4161, [0.3523; -0.3074; 0.78]);
q.to_matrix()
%4.2
q = quaternion(0.9010, [-0.0131; -0.3935; 0.1818]);
q.to_matrix()
%4.3
q = quaternion(0.6442, [-0.5851; -0.3146; 0.3791]);
q.to_matrix()
%4.4
q = quaternion(-0.3169, [0.1932; -0.6358; 0.6768]);
q.to_matrix()

%%%%%%%%%%%%%%%%%%%%%%%%%%
% Task 5
disp("task 5")
% 5.0.1
R = eye(3);
[theta, omega] = mat2angle(R)
% 5.0.2
R = [-1 0 0; 0 1 0; 0 0 -1];
[theta, omega] = mat2angle(R)
% 5.0.3
R = [-1 0 0; 0 -1 0; 0 0 1];
[theta, omega] = mat2angle(R)

% 5.1
R = [-0.5092, -0.0269, 0.8602;
     0.7973, 0.3617, 0.4833;
     -0.3242, 0.9319, -0.1628];
[theta, omega] = mat2angle(R)

% 5.2
R = [-0.4434, -0.4486, 0.7760;
     0.8961, -0.2012, 0.3957;
     -0.0214, 0.8708, 0.4912];
[theta, omega] = mat2angle(R)

% 5.3
R = [0.028, -0.0401, 0.9992;
     0.8698, -0.4929, -0.0222;
     0.4934, 0.8692, 0.0335];
[theta, omega] = mat2angle(R)

% 5.4
R = [-0.8299, 0.2217, 0.5120;
     0.3320, -0.5592, 0.7640;
     0.4557, 0.7989, 0.3927];
[theta, omega] = mat2angle(R)

%%%%%%%%%%%%%%%%%%%%%%%%%
% Task 6
disp("Task 6");
%hold on;
%grid on;

%q0 = quaternion.create_random_unit();
%q1 = quaternion.create_random_unit();

%steps = 100;
%q_int = quat_slerp(q0, q1, steps);
%for k = 1:steps
%    q = q_int(k, :);
    %disp(q)
%    plot3([q(1), q(2)], [q(1), q(3)], [q(1), q(4)], 'Color', 'red');
%end
%plot3([q0.u0, q0.v(1)], [q0.u0, q0.v(2)], [q0.u0, q0.v(3)], 'Color', 'blue');
%plot3([q1.u0, q1.v(1)], [q1.u0, q1.v(2)], [q1.u0, q1.v(3)], 'Color', 'green');
%hold off;






