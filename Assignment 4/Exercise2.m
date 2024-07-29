function [name, ufid, ...
    A, x0, x1, x2, ...
    sol1, P, D, C1, sol2, ...
    x0_another, sol3, C2, sol4] = Exercise2()
    % --- Name & UFID --- %
    name = "Name";
    ufid = 12345678;

    % --- Part A [10 Points] --- %
    A = [0.7 0.3 0.1; 0.1 0.5 0.1; 0.2 0.2 0.8;];
    x0 = [0.7; 0.1; 0.2;];

    x1 = A * x0;
    x2 = A * x1;

    % --- Part B (see SolveDiffEq.m) [10 Points] --- %

    % --- Part C [10 Points] --- %
    % Method 1: Call SolveDiffEq(...)
    sol1 = SolveDiffEq(A, x0);

    % Method 2: Diagonalization (of the Transformation Matrix)
    % P = NaN; % (REMOVE THIS LINE)
    % D = NaN; % (REMOVE THIS LINE)
    [P, D] = eigvec(A); % (UNCOMMENT THIS LINE)

    C1 = P \ x0;

    sol2 = P * D^inf * C1;

    % Observe: (DO THEY PRODUCE THE SAME RESULT?)
    % Conclude: In the long run we expect... In the long run, all initial vectors converge to the steady-state vector, aka the D diagonal.
    % This is otherwise known as the Perron-Forbenius Theorem, or Markov chains. In this specific example, the x0 vectors converge to the D diagonal which is the eigenvectors of A
    % which numerically go to [0.33; 0.17; 0.50;](COMPLETE)

    % --- Part D [10 Points] --- %
    x0_another = [0.8; 0.05; 0.15;];

    % Method 1: Call SolveDiffEq(...)
    sol3 = SolveDiffEq(A, x0_another);

    % Method 2: Diagonalization (of the Transformation Matrix)
    C2 = P \ x0_another;

    sol4 = P * D^inf * C2;

    % Comparision: (COMPARE RESULTS FROM DIFFERENT x0 VECTORS)
    % Theoreom: In the long run, all initial vectors converge to the steady-state vector, aka the D diagonal.
    % This is otherwise known as the Perron-Forbenius Theorem, or Markov chains. In this specific example, the x0 vectors converge to the D diagonal which is the eigenvectors of A
    % which numerically go to [0.33; 0.17; 0.50;] (STATE THEOREM)
    
    % Conclusion: In the long run we expect the percentages of those surveyed driving each type of vehicle to be given by sol2 (for x0) and sol4 (for x0_another) which end up being the same regardless of the x0 value. (COMPLETE)
end
