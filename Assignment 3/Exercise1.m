function [name, ufid, ...
    A, rref_A, det_A, det_AT, ...
    A1, b1, sol_1_partic, sol_1_matlab, sol_1_cramer, ...
    A2, b2, sol_2_partic, sol_2_matlab, sol_2_cramer, ...
    A3, b3, sol_3_partic, sol_3_matlab, sol_3_cramer] = Exercise1()
    % --- Name & UFID --- %
    name = "Name";
    ufid = 12345678;

    % --- Part A [10 Points] --- %
    % (i) Some MATLAB implementation details...

    % vvvvv COMMENT OUT BEFORE SUBMITTING vvvvv %
    % n = randi([2500, 5000]);
    % A = randi([-7,7], n, n);
    % b = randi([-7,7], n, n);

    % tic
        % A\b;
    % toc;

    % tic
        % inv(A) * b;
    % toc;
    % ^^^^^ COMMENT OUT BEFORE SUBMITTING ^^^^^ %

    % (COMPARE BOTH & NOTE WHICH ONE IS FASTER & FIND OUT WHAT A\b ACTUALLY DOES)
    % Using A\b is faster than inv(A) * b. What A\b actually does is
    % generates a solution to A *x = b and for ill-conditioned or singular matrices, 
    % it uses the least squares method to find a stable solution.
    % Essentially, A\b is a vectorized operation used to solve large
    % systems of equations. It only returns the correct solution if the
    % matrix is consistent though, otherwise if there is no solution, it
    % returns a wrong answer that was found using the least squares method.

    % (ii) Some more practical things...
    A = [1 2 3; 4 5 6; -7 -8 -9;];
    rref_A = rref(A);

    % (CONCLUDE INVERTIBILITY OF A WITH VALID REASONING)
    % The matrix A is not invertible becuase there is a free variable in
    % the 3 x 3 matrix, which means that the rank is not a full rank. 

    % Therefore, the determinant of A is 0 (ENTER HERE).

    det_A = det(A);
    % disp(det(sym(A))) % (COMMENT OUT BEFORE SUBMISSION!)

    det_AT = det(A');

    % (DETERMINE RELATION BETWEEN det(A) AND det(A^T))
    % The relationship between det(A) and det(A^T) is the same for all
    % square matrices. Otherwise, det(A) and det(A^T) can be different
    % because of the matrix configuration since A is mxn while A^T is nxm.

    % (WHAT CAN YOU SAY ABOUT THE INVERIBILITY OF A^T WHEN A IS NOT INVERTIBLE?)
    % If A is not invertible, A^T can still be invertible as long as A^T has
    % a full rank. This is due to the configuration difference between the
    % matrices A and A^T which means they can possibly have different rank
    % requirements from each other. 

    % --- Part B [10 Points] --- %
    A1 = [0 1 4; 1 3 3; 3 7 5;];
    b1 = [-4; -2; 6;];

    sol_1_partic = ParticularSolution(A1, b1);
    sol_1_matlab = A1\b1;
    sol_1_cramer = CramersRule3x3(A1, b1);

    % (IS THE SYSTEM CONSISTENT & PROVIDE REASONING)
    % (DETERMINE ALL SOLUTIONS OF THE SYSTEM) 

    % The system is consistent, and we know this because the Particular
    % Solution returns something, so we know this has the solution. 

    % There is one unique solution of the system and the reason for this is
    % because the particular solution, MatLab Solution and Cramer's Rule
    % 3x3 all produce the same results, meaning there is only one solution.

    % --- Part C [10 Points] --- %
    A2 = [0 2 4; 1 3 3; 3 7 5;];
    b2 = [-4; -2; 6;];

    sol_2_partic = ParticularSolution(A2, b2);
    sol_2_matlab = A2\b2;
    sol_2_cramer = CramersRule3x3(A2, b2);

    % (IS THE SYSTEM CONSISTENT & PROVIDE REASONING)
    % (DETERMINE ALL SOLUTIONS OF THE SYSTEM)
    
    % The system is inconsistent because the PatricularSolution returns
    % blank, which means there is no solution and the system is
    % inconsistent.

    % --- Part D [10 Points] --- %
    A3 = [0 2 4; 1 3 3; 3 7 5;];
    b3 = [-4; -2; -2;];

    sol_3_partic = ParticularSolution(A3, b3);
    sol_3_matlab = A3\b3;
    sol_3_cramer = CramersRule3x3(A3, b3);

    % (IS THE SYSTEM CONSISTENT & PROVIDE REASONING)
    % (DETERMINE ALL SOLUTIONS OF THE SYSTEM)

    % The system is consistent since the ParticularSolution returns a
    % solution and isn't blank, which indicates there is at least one
    % solution. 

    % There is infinitely many solutions because the particular solution,
    % MatLab solution, and Cramer's Rule 3x3 all have different outputs,
    % and since the particular solution returns a solution, we know the
    % system is consistent so since each output is different, it means
    % there are multiple solutions, so infinitely many solutions.

    % x = [4; -2; 0;] + [-3; 2; 1;] * t
end

