function route = GradientBasedPlanner (f, start_coords, end_coords, max_its)
% требуется найти путь на плоскости на основании градиента функции f 
% входные данные:
%     start_coords и end_coords -- координаты начальной и конечной точек
%     max_its -- максимальное число возможных итераций 
% выходные данные:
%     route -- массив из 2 столбцов и n строк
%     каждая строка соответствует координатам x, y робота (по мере прохождения пути)

disp(start_coords)
disp(end_coords)

[gx, gy] = gradient (f);
disp(size(gx))
disp(size(gy))
x = start_coords(1);
y = start_coords(2);

% *******************************************************************
% ВАШ КОД ДОЛЖЕН НАХОДИТЬСЯ ЗДЕСЬ
xrate = 10;
yrate = 10;
route = zeros(max_its, 2);
route(1, :) = [x, y];

for i=2:max_its
    dx = gx(y, x);
    dy = gy(y, x);
    norm = sqrt(dx^2 + dy^2);
    dx = dx / norm;
    dy = dy / norm;

    x = x - round(xrate * dx);
    y = y - round(yrate * dy);
    
    if (x - end_coords(1))^2 + (y - end_coords(2))^2 < 4
        break
    end

    %disp([x, y]);
    route(i, :) = [x, y];
end
% *******************************************************************
route(i, :) = end_coords;
route = route(1:i, :);

disp(route)
end
