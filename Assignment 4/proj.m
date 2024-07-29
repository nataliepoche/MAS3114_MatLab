function [y_hat, z, name, ufid] = proj(y, u)
    % Purpose: (COMMENT)
    % Input Argument [y]: Vector y (COMMENT)
    % Input Argument [u]: Vector x (COMMENT)
    % Output Argument [y_hat]: The projection of y onto u (COMMENT)
    % Output Argument [z]: The component of y orthogonal to u (COMMENT)

    % --- Name & UFID --- %
    name = "Name";
    ufid = 12345678;

    % (ENTER CODE HERE)
    if norm(u) == 0
        error("Vector u must be a zero vector")
    end

    y_hat = (dot(y, u) / dot(u, u)) * u;

    z = y - y_hat;
end
