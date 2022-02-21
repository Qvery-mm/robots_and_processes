classdef quaternion

    properties
        u0    % scalar part
        v     % vector part
    end

    methods
        % constructor
        function obj = quaternion(u0, v)
            obj.u0 = u0;
            obj.v = v;
        end
        
        % representation
        function print(obj)
            fprintf("u0 = %f\n", obj.u0)
            fprintf("v = ")
            disp(obj.v')
        end

        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

        % cast to rotation matrix
        function mat = to_matrix(obj)
            first = (obj.u0^2 - obj.v'*obj.v) * eye(3);
            second = 2 * obj.u0 * quaternion.J(obj.v);
            third = 2 * obj.v * obj.v';
            mat = first + second + third;
        end

        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

        % quaternion norm
        function res = norm(obj)
            res = obj.u0^2 + obj.v' * obj.v;
        end

        % quaternion dot product
        function res = dot(obj, other)
            res = obj.u0 * other.u0 + obj.v' * other.v;
        end

        % scale and quaternion product operator
        function res = mtimes(obj, other)
            if quaternion.isquaternion(obj) && quaternion.isquaternion(other)
                i_u0 = obj.u0 * other.u0 - obj.v' * other.v;
                i_v = obj.u0 * other.v + other.u0 * obj.v + cross(obj.v, other.v);
                res = quaternion(i_u0, i_v);
            elseif quaternion.isquaternion(obj) && isnumeric(other)
                res = obj;
                res.u0 = res.u0 * other;
                res.v = res.v * other;
            elseif isnumeric(obj) && quaternion.isquaternion(other)
                res = other;
                res.u0 = obj * res.u0;
                res.v = obj * other.v;
            end
        end 

        % quaternion sum
        function res = plus(obj, other)
            res = quaternion(obj.u0 + other.u0, obj.v + other.v);
        end

    end

    methods (Static)
        % create random unit quaternion
       function obj = create_random_unit()
           obj = quaternion(2 * (rand() - 0.5), 2 * (rand(3, 1)-0.5));
           i_norm = sqrt(obj.norm());
           obj.u0 = obj.u0 / i_norm;
           obj.v = obj.v / i_norm;
       end

        % covert angle view to quaternion
        function obj = from_angle(theta, omega)
            i_u0 = cos(theta / 2);
            i_v = sin(theta / 2) * omega;
            obj = quaternion(i_u0, i_v);
        end

        % is quaternion
        function ret = isquaternion(obj)
            ret = strcmp(class(obj), class(quaternion(0, [0;0;0])));
        end   
    end

    methods (Static, Access = private)
        
        % matrix for cross product
        function mat = J(u)
            mat = [0, -u(3), u(2);
                   u(3), 0, -u(1);
                   -u(2), u(1), 0];
        end
    end
end