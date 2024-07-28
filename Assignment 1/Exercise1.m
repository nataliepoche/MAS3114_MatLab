function [name, ufid, ...
          A, b, c, D, x1, x2, x3, aug, ...
          x4, x5, x6, x7, x8, ...
          F1, F2, E, m, n, E1, E2] = Exercise1()
    % --- Name & UFID --- %
    name = "Name";
    ufid = 12345678;

    % --- Part A [10 Points] --- %
    A = [1 2 3; 4 5 6; -7 -8 -9];
    b = [2; 4; 6];
    c = [2 -2 2];
    D = [1 2 3 4 5; -5 -4 -3 -2 -1; 4 3 2 1 0];
    x1 = A(3,:); % Generates row 3 from matrix A
    x2 = D(:,5); % Generates column 5 from matrix D
    x3 = [A b]; % Adds matrix b to matrix A by setting matrix b as the last column of matrix A
    aug = [A; c]; % Adds matrix c as the last row of matrix A

    % --- Part B [10 Points] --- %
    x4 = eye(7); % Generates a 7 row, 7 column matrix that has all 0's except for thr 1's down the diagonal, assummed to be in rref form
    x5 = zeros(6,4); % Generates a 6 row, 4 column matrix that only has 0's
    x6 = zeros(6); % Generates a 6 row, 6 column matrix that only has 0's
    x7 = ones(5,3); % Generates a 5 row, 3 column matrix that only has 1's
    x8 = diag(c); % Generates a matrix that takes the matrix c and makes it the diagonal of the matrix while fillin in the rest as 0's

    % --- Part C [10 Points] --- %
    F1 = randi([-4,8],3,5); % Generates a 3 row, 5 column matrix that is filled with random numbers between -4 and 8

    F2 = F1;    % (DO NOT REMOVE) Copy array
    F2(:, [2 5]) = F1(:, [5 2]); % (WRITE COMMAND ON THIS LINE) Generates a new matrix that is the same as matrix F1 except it swaps F1's columns 2 and column 5 with each other

    E = [A F2]; % Generates a new matrix that adds matrix F2 to the end of matrix A
    
    % m = NaN; % (REMOVE THIS LINE)
    % n = NaN; % (REMOVE THIS LINE)
    [m, n] = size(E); % (UNCOMMENT LINE & COMPLETE)
    
    E1 = E(:, [3 8]); % Generates columns 3 and 8 of matrix E
    E2 = E(:, 3:8); % Generates the columns of matrix E starting from matrix E's column 3 and ending at matrix E's column 8
end
