function [name, ufid, u, v, w, x, A, A_11, A_23, A2, A3, B, B2, B3, ...
          b, aug, rref_Ab1, rref_Ab2, pivcols, compare] = Exercise()
    % --- Name & UFID --- %
    name = "Name";
    ufid = 12345678;

    % --- Extra Credit [5 Points] --- %
    % * Vectors *
    u = [1 3 5 7]; % u is the row vector with entries 1, 3, 5, and 7 
    v = [1; 3; 5; 7]; % v is column vector, a semicolon creates a new row
    w = 1:7; % w prints a row vector from 1 to 7
    x = 1:2:7; % x prints row vector from one to 7 in step of 2
    
    % * Matrices *
    % Enter entries manually
    A = [1 2 3; 4 5 6]; 
    A_11 = A(1,1); % A(1,1) returns the (1,1) entry of A
    A_23 = A(2,3); % A(2,3) returns the (2,3) entry of A
    A2 = A(2,:); % A(2,:) gives the second row of A
    A3 = A(:,3); % A(:,3) gives the third column of A
    
    % Randomly generated matrices
    B = randi([-10,10],6,4); % generates a random matrix with 6 rows and 4 columns consisting of integerss from -10 to 10
    B2 = B(2:5,2:4); % generates the matrix of B from row 2 to row 5 and column 2 to column 4
    B3 = B([2 5], 2:4); % generates only row 2 and 5 from column 2 to 4 of matrix B
    
    % * Solving Systems *
    % Solve Ax=b using RREF
    b = [1; 2];
    aug = [A b]; % Generates the matrix A on the left side and matrix B on the right side
    rref_Ab1 = rref([A b]); % rref_Ab1 is the reduced echelon form of [A b]
    % rref_Ab2 = NaN; % (REMOVE THIS LINE)
    % pivcols = NaN; % (REMOVE THIS LINE)
    [rref_Ab2, pivcols] = rref([A b]); % (UNCOMMENT LINE) gives the reduced echelon form of [A b] and the pivot columns of the reduced echelon form of [A b]
    % Ax = b is consistent since
    
    % Solve Ax=b by comparing the ranks
    compare = rank_comp(A,[A b]); % The system is consistent since rank(A) = rank([A b])
end
