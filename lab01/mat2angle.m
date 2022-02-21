function [theta, omega] = mat2angle(R)
    theta = acos((trace(R) - 1) / 2);
    if theta == 0
        omega = [nan; nan; nan];
    elseif theta == pi
        % plus minus
        omega = [sqrt((R(1, 1) + 1)/2), sqrt((R(2, 2) + 1)/2), sqrt((R(3, 3) + 1)/2)];
    else
        omega = 1 / (2 * sin(theta)) * [R(3, 2) - R(2, 3); R(1, 3) - R(3, 1); R(2, 1) - R(1, 2)];
    end
end

