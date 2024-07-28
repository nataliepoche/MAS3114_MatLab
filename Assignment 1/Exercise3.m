function [name, ufid, ...
          bA, A1, Ab1, sol1, A2, Ab2, sol2, A3, Ab3, sol3, ...
          example_A1, example_b1, example_type1, ...
          bC, A4, Ab4, sol4, A5, Ab5, sol5, A6, Ab6, sol6, ...
          example_A2, example_b2, example_type2, ...
          example_A3, example_b3, example_type3] = Exercise3()
    % --- Name & UFID --- %
    name = "Name";
    ufid = 12345678;

    % --- Part A: Underdetermined Systems [10 Points] --- %
    bA = randi([-4 8], 2, 1);
    
    A1 = randi([-4 8], 2, 3);
    Ab1 = [A1 bA];
    [~, n] = size(A1); % (UNCOMMENT LINE)
    sol1 = LS_solution(n, A1, Ab1);

    A2 = randi([-4 8], 2, 3);
    Ab2 = [A2 bA];
    [~, n] = size(A2); % (UNCOMMENT LINE)
    sol2 = LS_solution(n, A2, Ab2);

    A3 = randi([-4 8], 2, 3);
    Ab3 = [A3 bA];
    [~, n] = size(A3); % (UNCOMMENT LINE)
    sol3 = LS_solution(n, A3, Ab3);
    
    % --- Part B: Explanation of Part A [10 Points] --- %

    % (EXPLAIN)
    % The reason why most underdetermined linear systems have infinitely
    % many solutions is because underdetermined systems have less pivot
    % variables than total variables, so then the remaining non-pivot
    % variables are called free variables that can be any number, so there
    % are infinitely many solutions because free variables can be anything.

    % An underdetermined linear system cannot have a unique solution
    % because since underdetermined linear systems have more varuabkes than
    % equations, there are always going to be free variables.

    % (LEAVE THE FOLLOWING AS NaN OR PROVIDE AN EXAMPLE IF POSSIBLE)
    % (WHEN PROVIDING AN EXAMPLE, IT MUST BE A NON-TRIVIAL EXAMPLE.)
    % (i.e., A MATRIX DOES NOT CONTAIN A ZERO ROW AND DOES NOT HAVE TWO OR MORE IDENTICAL ROWS.)
    example_A1 = [1 2 3; 2 4 6];
    example_b1 = [7; 8];
    %example_type1 = rref([example_A1 example_b1]); % (REMOVE LINE IF EXAMPLE)
    [~, n] = size(example_A1); % (UNCOMMENT IF EXAMPLE)
    example_type1 = LS_solution(n, example_A1, [example_A1, example_b1]); % (UNCOMMENT IF EXAMPLE)
   
    % --- Part C: Overdetermined Systems [10 Points] --- %
    bC = randi([-4 8], 3, 1);

    A4 = randi([-4 8], 3, 2);
    Ab4 = [A4 bC];
    [~, n] = size(A4); % (UNCOMMENT LINE)
    sol4 = LS_solution(n, A4, Ab4);

    A5 = randi([-4 8], 3, 2);
    Ab5 = [A5 bC];
    [~, n] = size(A5); % (UNCOMMENT LINE)
    sol5 = LS_solution(n, A5, Ab5);

    A6 = randi([-4 8], 3, 2);
    Ab6 = [A6 bC];
    [~, n] = size(A6); % (UNCOMMENT LINE)
    sol6 = LS_solution(n, A6, Ab6);
    
    % --- Part D: Explanation of Part C [10 Points] --- %
    
    % (EXPLAIN)
    % In overdetermined systems there are more equations than variables.
    % Since there are more systems than variables, an overdetermined system
    % generally tries to accommodate more pivots than variables, which ends
    % up resulting in inconsistent rows when attempting to convert the
    % augmented matrix to rref form during row reduction, since the pivots
    % will end up contradicting the variables, for example saying x1 = 0,
    % but then also saying x1 = 2


    % (PROVIDE AN EXAMPLE WITH ONE SOLUTION BELOW WITH A NONTRIVIAL MATRIX)
    example_A2 = [1 2; 3 4; 4 6];
    example_b2 = [5; 11; 16];
    %example_type2 = NaN; % (REMOVE LINE)
    [~, n] = size(example_A2); % (UNCOMMENT)
    example_type2 = LS_solution(n, example_A2, [example_A2, example_b2]); % (UNCOMMENT)

    % (PROVIDE AN EXAMPLE WITH INFINITELY MANY SOLUTIONS BELOW WITH A NONTRIVIAL MATRIX)
    example_A3 = [1 2; 2 4; 3 6];
    example_b3 = [4; 8; 12];
    %example_type3 = NaN; % (REMOVE LINE)
    [~, n] = size(example_A3); % (UNCOMMENT IF EXAMPLE)
    example_type3 = LS_solution(n, example_A3, [example_A3, example_b3]); % (UNCOMMENT)
end
