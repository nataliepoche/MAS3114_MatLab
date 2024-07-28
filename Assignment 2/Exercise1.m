function [name, ufid, ...
    A1, A2, A3, dep_A1, dep_A2, dep_A3, ...
    B1, B2, B3, dep_B1, dep_B2, dep_B3, ...
    example_B, dep_B, example_C, dep_C] = Exercise1()
    % --- Name & UFID --- %
    name = "Name";
    ufid = 12345678;

    % --- Part A [10 Points] --- %
    % (1) m < n
    A1 = randi([-4 8], 3, 5);
    A2 = randi([-4 8], 3, 5);
    A3 = randi([-4 8], 3, 5);

    dep_A1 = dependence(A1);
    dep_A2 = dependence(A2);
    dep_A3 = dependence(A3);

    % (2) m > n
    B1 = randi([-4 8], 5, 3);
    B2 = randi([-4 8], 5, 3);
    B3 = randi([-4 8], 5, 3);

    dep_B1 = dependence(B1);
    dep_B2 = dependence(B2);
    dep_B3 = dependence(B3);

    % --- Part B [10 Points] --- %
    % Columns of any 3x5 matrix is always linearly dependent because there
    % are too variables/vectors when comapred to the entries in each
    % vector, so there will have to be at least one free variables, which
    % makes the matrix linearly dependent as there is no one solution. 

    example_B = NaN;
    dep_B = NaN;

    % --- Part C [10 Points] --- %
    % (OBSERVE & EXPLAIN)

    example_C = [1 2 3; 2 4 6; 3 6 9; 4 8 12; 5 10 15];
    dep_C = dependence(example_C);
end
