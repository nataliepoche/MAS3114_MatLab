function [transform_type, name, ufid] = transformation(A)
    % Purpose: This function determines if the set of column and rows makes the matrix onto, one-to-one, both, or neither(COMMENT)
    % Input Argument [A]: An nxm matrix A(COMMENT)
    % Output Argument [transform_type]: Text indicating the transformation type(COMMENT)

    % --- Name & UFID --- %
    name = "Name";
    ufid = 12345678;

    [m, n] = size(A); % # of rows and columns of A, respectively

    both = "Onto and one-to-one";
    onto = "Onto but not one-to-one";
    one_to_one = "One-to-one but not onto";
    neither = "Neither onto nor one-to-one";

    rank_A = rank(A);
    % Use dependence.m as a guide to write this new function. Enter code below.
    if rank(A) == n && rank(A) == m
        transform_type = both;
    else if rank(A) == n && rank(A) ~= m
        transform_type = one_to_one;
    else if rank(A) == m && rank(A) ~= n
        transform_type = onto;
    else
        transform_type = neither;
    end
    end
    end
end
