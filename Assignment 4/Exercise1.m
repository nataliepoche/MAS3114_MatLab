function [name, ufid, ...
    n1, B1, A1, ...
    P1, D1, PDP1, ...
    P1_again, D1_again, PDP_again, ...
    P2, D2, PDP2, P3, D3, PDP3, ...
    A2, P4, D4, verify1_LHS, verify1_RHS, verify2, basis_eigenspace, ...
    A3, P5, D5, dot_A3, ...
    A4, P6, D6] = Exercise1()
    % --- Name & UFID --- %
    name = "Name";
    ufid = 12345678;

    rng(ufid, 'twister') % (DO NOT REMOVE)

    % --- Part A [10 Points] --- %
    % vvv GENERATES RANDI MATRIX WITH DISTINCT EIGENVALUES vvv %
    n1 = 4;
    A1 = [];
    B1 = [];
    while length(unique(diag(A1))) ~= n1
        B1 = randiFullRank([-7, 7], n1);
        A1 = triu(B1); % Returns the upper-triangular part of A1
    end
    % ^^^ DO NOT MODIFY! ^^^ %

    % The eigenvalues of A1 are -2, -4, 5, 4 because/as... the eigenvalues can be found by solving the characteritstic polynomials det(A1 - λ1) = 0 (COMPLETE)

    % P1 = NaN; % (REMOVE THIS LINE)
    % D1 = NaN; % (REMOVE THIS LINE)
    [P1, D1] = eig(A1); % (UNCOMMENT THIS LINE)

    % P1 is... the columns are the item vectors corresponding to the item values of D1 (a matrix of whose columns are the eigenvectors of A1) (COMPLETE)
    % D1 is... a diagonal matrix whose diagonal elements are the eigenvalues of A1 (COMPLETE)

    PDP1 = P1 * D1 * inv(P1);

    % P1_again = NaN; % (REMOVE THIS LINE)
    % D1_again = NaN; % (REMOVE THIS LINE)
    [P1_again, D1_again] = eigvec(A1); % (UNCOMMENT THIS LINE)
    PDP_again = P1_again * D1_again * inv(P1_again);

    % We can conlude that A1 is diagonalizeable (definition of
    % diagonalizeable)
    % since... we have a full set of linearly independent eignvectors (COMPLETE)

    % (i) First distinct diagonalization
    P2 = P1(:,[4 2 1 3]); % (DO NOT REMOVE)
    D2 = D1([4 2 1 3],[4 2 1 3]); % (DO NOT REMOVE)

    % MODIFY P2 & D2 HERE

    PDP2 = P2 * D2 * inv(P2);

    % (ii) Second distinct diagonalization
    P3 = P1(:,[3 4 1 2]); % (DO NOT REMOVE)
    D3 = D1([3 4 1 2], [3 4 1 2]); % (DO NOT REMOVE)

    % MODIFY P3 & D3 HERE

    PDP3 = P3* D3 * inv(P3);

    % --- Part B [10 Points] --- %
    A2 = [-3 1 0 0; 0 -3 1 0; 0 0 -3 1; 0 0 0 -3;];

    % P4 = NaN; % (REMOVE THIS LINE)
    % D4 = NaN; % (REMOVE THIS LINE)
    [P4, D4] = eig(A2); % (UNCOMMENT THIS LINE)

    verify1_LHS = A2 * P4;
    verify1_RHS = P4 * D4;
    verify2 = P4 * D4 * inv(P4);

    % Observe: For A2, we cannot diagonalize it since A2 is not equal to P4 * D4 * inv(P4) which indicates that there is not a complete set of linearly independent eigenvectors (COMPLETE)

    basis_eigenspace = NulBasis(A2 + 3 * eye(4)); %need to complete

    % A2 is not diagonalizable because...
    % (i)  It does not have a full set of linearly independent eignenvectors (REASON #1)
    % (ii) The matrix A2 is a Jordan block, which indicates it cannot be
    % diagonalized but can be put in Jordan form, this is further proven when A2 is not the product of P4 * D4 * inv(P4) as this is a requirment to prove a matrix has a complete set of linearly independent eigenvectors. (REASON #2)

    % --- Part C [10 Points] --- %
    A3 = [6 -1; -1 6;];

    % P5 = NaN; % (REMOVE THIS LINE)
    % D5 = NaN; % (REMOVE THIS LINE)
    [P5, D5] = eigvec(A3); % (UNCOMMENT THIS LINE)

    dot_A3 = dot(P5(:,1), P5(:,2));

    % The eigenvectors of A2 are orthogonal. (FILL IN THE BLANK)

    % Solution: x(t) = c1 * e^(7 * t) * [-1; 1] + c2 * e^(5 * t) * [1; 1;] (COMPLETE)

    % --- Part D [10 Points] --- %
    A4 = [3 -1 -1; -1 3 -1; -1 -1 3;];

    % P6 = NaN; % (REMOVE THIS LINE)
    % D6 = NaN; % (REMOVE THIS LINE)
    [P6, D6] = eigvec(A4); % (UNCOMMENT THIS LINE)

    % A4 is diagonalizable because... (COMPLETE)
    % A4 has a full set of linearly independent eigenvectors, which allows
    % it to be diagonalized. 
    
    % Solution: x(t) = c1 * e^(4 * t) * [-1; 1; 0;] + c2 * e^(4 * t) * [-1; 0; 1;] + c3 * e^(1 * t) * [1; 1; 1;] (COMPLETE)
end
