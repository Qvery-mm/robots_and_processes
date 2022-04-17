% test 1
a = [0, 0];
b = [0, 2];
c = [3, 0];
x = [2, 5];
y = [5, 5];
z = [5, 3];

assert(triangles_intersect(a, b, c, x, y, z) == false)
% test 2
a = [0, 0];
b = [0, 2];
c = [3, 0];
x = [-2, 5];
y = [0, 5];
z = [0, 2];

assert(triangles_intersect(a, b, c, x, y, z) == true)

% test 3
a = [-10, -4];
b = [10, -4];
c = [0, 10];
x = [-5, 0];
y = [5, 0];
z = [0, 5];

assert(triangles_intersect(a, b, c, x, y, z) == true)

% test 4
a = [-2, 0];
b = [-5, 6];
c = [-5, -6];
x = [1, 0];
y = [7, 10];
z = [7, -10];

assert(triangles_intersect(a, b, c, x, y, z) == false)

% test 5
a = [-2, 0];
b = [0, -3];
c = [0, 4];
x = [0, 5];
y = [0, 8];
z = [5, -10];

assert(triangles_intersect(a, b, c, x, y, z) == false)

