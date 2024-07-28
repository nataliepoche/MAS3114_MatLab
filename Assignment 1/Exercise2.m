function [name, ufid, B, pivcols, compare, m, n, solution_type] = Exercise2(A, b)
    % --- Name & UFID --- %
    name = "Name";
    ufid = 12345678;

    % --- Part A [10 Points] --- %
    %B = NaN; % (REMOVE THIS LINE)
    %pivcols = NaN; % (REMOVE THIS LINE)
    [B, pivcols] = rref([A b]); % (WRITE COMMAND BEFORE SEMI-COLON)
    % (COMMENTS FOR B AND pivcols) returns the matrix A in rref form, renamed matrix B
    % it also returns the pivot columns of matrix A in this case it was 1,
    % 2, and 4

    % (EXPLAIN WHY SYSTEM IS INCONSISTENT)
    % The system is inconsistent because in the augmented form of rref, the
    % last row is all 0's with one 1 in the last column, this indicates
    % that despite having no associate variable, it is equal to 1. This is
    % the same same as saying 0 = 1 which is not the case, so it is
    % inconsistent. Or another way to view this could be that the last
    % column is a pivot column which is not supposed to be possible for an
    % augmented matrix since the last column is just supposed to be the
    % constants. 

    % --- Part B [10 Points] --- %
    compare = rank_comp(A, [A b]);
    % (STATE THEOREM)
    % Rouche-Capelli Theorem
    % This theorem states that there is one solution if the number of
    % equations matches the number of unknown variables. If the number of
    % unknown variales are greater than the number of equations than the
    % system has no solution but if the number of unknown variabels are
    % less than the number of equations and the rank of the augmented
    % matrix matched the rank of the coefficient matrix than the system has
    % no solutions.
    
    % (APPLY/USE THEOREM & COMPARE TO RESULT FROM PART A)
   
    % --- Part C [10 Points] --- %
    % m = NaN; % (REMOVE THIS LINE)
    % n = NaN; % (REMOVE THIS LINE)
    [m, n] = size(A); % (UNCOMMENT LINE AND COMPLETE)
    solution_type = LS_solution(n, A, [A b]);
end
