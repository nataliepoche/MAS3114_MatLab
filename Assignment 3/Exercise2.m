function [name, ufid, ...
    A1, b1, sol_1_partic, sol_1_matlab, sol_1_cramer, ...
    A2, b2, sol_2_partic, sol_2_matlab, sol_2_cramer, ...
    A3, b3, sol_3_partic, sol_3_matlab, sol_3_cramer] = Exercise2()
    % --- Name & UFID --- %
    name = "Name";
    ufid = 12345678;

    % --- Part A (see CramersRule.m) [10 Points] --- %

    % --- Part B [10 Points] --- %
    % (i) m > n
    A1 = randi([-4 8], 6, 4);
    b1 = randi([-4 8], 6 , 1);

    sol_1_partic = ParticularSolution(A1, b1);
    sol_1_matlab = A1\b1;
    sol_1_cramer = CramersRule(A1, b1);

    % (ii) m < n
    A2 = randi([-4 8], 4, 6);
    b2 = randi([-4 8], 4, 1);

    sol_2_partic = ParticularSolution(A2, b2);
    sol_2_matlab = A2\b2;
    sol_2_cramer = CramersRule(A2, b2);

    % (iii) m = n
    A3 = randi([-4 8], 6, 6);
    b3 = randi([-4 8], 6, 1);

    sol_3_partic = ParticularSolution(A3, b3);
    sol_3_matlab = A3\b3;
    sol_3_cramer = CramersRule(A3, b3);

    % --- Part C [10 Points] --- %

    % When A is invertible, the matrix has to be square and the determinant
    % must be a non-zero, so in the case of observations the particular solution, 
    % matlab solution, and cramer's rule must all be the same since there has to be 
    % one solution to have a non-zero determinant. (OBSERVATIONS)

    % When Ax = b is consistent where A is an n x n singular matrix, there
    % has to be a non-blank particular solution, as well as a matrix
    % solution, however the matrix solution does not equal the particular
    % solution. And there is no output for cramer's rule since the determinant is 0.
    % (OBSERVATIONS)

    % When Ax = b is consistent where A is an m x n (non-square)
    % matrix, there seems to be a particular solution when m < n, otherwise
    % the solution is blank when m > n. There is always a matrix solution, and there
    % is no solution for the cramer's rule
    % (OBSERVATIONS)
end
