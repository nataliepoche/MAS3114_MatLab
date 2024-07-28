function [x, name, ufid]  = CramersRule(A, b)
    % Purpose: Solve the system Ax=b for a mxn matrix A using Cramer's Rule. (COMMENT)
    % Input Argument [A]: a mxn coefficient matrix.(COMMENT)
    % Input Argument [b]: a column vector in R^m(COMMENT)
    % Output Argument [x]: a solution to Ax=b (or NaN if A is close to singular or NaN if m~=n)(COMMENT)

    % --- Name & UFID --- %
    name = "Name";
    ufid = 12345678;

    [m, n] = size(A); % # of rows and columns of A, respectively

    % Use CramersRule3x3.m as a guide to write this new function.
    % Hint: Use a for-loop.

    if m ~= n
        x = NaN;
    else if abs(det(A)) <= 10^(-8) % Close to singular (so we can't apply Cramer's rule)
        x = NaN;
    else % Apply Cramer's Rule

        x = zeros(1, 3); % Allocate the (row) vector in advance

        for i = 1:m
            B = A;
            B(:, i) = b; % A_i(b)
            x(i) = det(B) / det(A);
        end

        x = x'; % Transpose to express the solution as a column vector
    end
end
