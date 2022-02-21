function q_int = quat_slerp(q0, q1, steps)
    q_int = zeros(steps, 4);
    Omega = acos(dot(q0,q1));
    h = 1/(steps());
    for step = 1:steps
        t = h * step - h;
        q_t = sin((1 - t) * Omega) / sin(Omega) * q0 + sin(t*Omega) / sin(Omega) * q1;
        q_int(step, :) = [q_t.u0, q_t.v'];
    end
end

