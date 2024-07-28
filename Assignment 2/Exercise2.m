function [name, ufid, ...
    transform_A1, transform_A2, transform_A3, ...
    transform_B1, transform_B2, transform_B3, ...
    C1, C2, C3, transform_C1, transform_C2, transform_C3, ...
    example_neither, transform_neither] = Exercise2(A1, A2, A3, B1, B2, B3)
    % --- Name & UFID --- %
    name = "Name";
    ufid = 12345678;

    % --- Part A (see transformation.m) [10 Points] --- %

    % --- Part B [10 Points] --- %
    transform_A1 = transformation(A1);
    transform_A2 = transformation(A2);
    transform_A3 = transformation(A3);

    transform_B1 = transformation(B1);
    transform_B2 = transformation(B2);
    transform_B3 = transformation(B3);

    C1 = randi([-4 8], 3, 3);
    C2 = randi([-4 8], 3, 3);
    C3 = randi([-4 8], 3, 3);

    transform_C1 = transformation(C1);
    transform_C2 = transformation(C2);
    transform_C3 = transformation(C3);

    % --- Part C [10 Points] --- %

    % (1) When m < n, a transformation T(x) = Ax (EXPLAIN USING MATHEMATICAL
    %     REASONING)

    % The reason why the transformation cannot be one-to-one when m < n is
    % because for a matrix to be considered one to one, there has to be a
    % pivot in every column. However, when m < n, there are more columns
    % than rows, so the pivots are limited to the number of rows, or else
    % the matrix is inconsistet. So, since there are less rows than
    % columns, then there cannot be a pivot in every column, so it cannot
    % be one to one. 

    % (2) When m > n, a transformation T(x) = Ax (EXPLAIN USING MATHEMATICAL
    %     REASONING)

    % The reason why the transformation cannot be onto when m > n is
    % because inorder for a matrix to be considered onto there has to be
    % pivots in every row. However, when m > n, or there are more rows than
    % columns, the pivots are limited to the number of columns or else the
    % matrix is inconsistent. So, since there are less columns than rows,
    % there cannot be a pivot in every row, so it cannot be onto.

    % (3) When m = n, a transformation T(x) = Ax (EXPLAIN USING MATHEMATICAL
    %     REASONING)

    % The transformation can be neither onto nor one to one when m = n
    % because if the rank(A), or the number of pivots is something less than n, then it is neither
    % onto, nor one to one becuase in a square matrix the columns and rows
    % are the same, so if there is not pivot in a row, then there is also
    % no pivot in a column.

    example_neither = [1 2 3; 4 5 6; 7 8 9];
    transform_neither = transformation(example_neither);

    % (4) When m = n, a transformation T(x) = Ax (EXPLAIN USING MATHEMATICAL
    %     REASONING)

    % The transformation cannot be either one to one or onto in a square
    % matrix, because for one to one, the criteria is that every column has
    % a pivot, while the criteria for onto is that every row has a pivot.
    % So, in a square matrix, it is not possible for it to be either onto
    % or one to one because if there is a pivot in every column, then that
    % also must mean there is a pivot in every row since the amount of rows
    % and columns are the same. 
end

