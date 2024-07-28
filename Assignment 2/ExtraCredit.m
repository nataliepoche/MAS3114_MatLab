function [E_matrices_in_order, A_inverse] = ExtraCredit()
    % --- Name & UFID --- %
    name = "Name";
    ufid = 12345678;
    
    % ==> FINDING A^-1 WITH ELEMENTARY MATRICES <==
    %           Authored by Robert Conde
    %
    % You will determine the inverse of A using ONLY elementary matrices.
    % You may not call inv(...) or rref(...).
    % 
    % This process is covered in your book in "Chapter 2.2: The Inverse of
    % a Matrix" (see Theorem 7 & Proof). We will use the same numbering
    % scheme E1, E2, ..., En for (En * ... * E_2 * E1) * A = I. You will
    % determine matrices E1, ..., En so find the inverse of A,
    % A^-1 = (En * ... * E_2 * E1).
    %
    % You may look up example of this being done but your work should be
    % original. Have fun.
    
    % This is our 3x3 matrix A that we will find the inverse of
    A_original = [1 2 -2; -1 0 3; 1 4 0]; % Enter Matrix A
    A = A_original;
    
    
    % Repeat the following 4 commands until A equals the 3x3 identity matrix
    E1 = [1 0 0; 1 1 0; 0 0 1]; % Enter your first elementary matrix
    A = E1 * A;
    disp("A now is...")
    disp(A); % We want to see A being reduced to the identity

    E2 = [1 0 0; 0 1 0; -1 0 1]; % Enter your second elementary matrix
    A = E2 * A;
    disp("A now is...")
    disp(A);
    
    % Repeat for E3, E4, ... as needed

    E3 = [1 0 0; 0 1 0; 0 -1 1]; % Enter your third elementary matrix
    A = E3 * A;
    disp("A now is...")
    disp(A);

    E4 = [1 -1 0; 0 1 0; 0 0 1]; % Enter your fourth elementary matrix
    A = E4 * A;
    disp("A now is...")
    disp(A);

    E5 = [1 0 0; 0 1 -1; 0 0 1]; % Enter your fifth elementary matrix
    A = E5 * A;
    disp("A now is...")
    disp(A);

    E6 = [1 0 3; 0 1 0; 0 0 1]; % Enter your sixth elementary matrix
    A = E6 * A;
    disp("A now is...")
    disp(A);

    E7 = [1 0 0; 0 1/2 0; 0 0 1]; % Enter your seventh elementary matrix
    A = E7 * A;
    disp("A now is...")
    disp(A);

    % List your matrices here as shown
    E_matrices_in_order = {E1, E2, E3, E4, E5, E6, E7}; % Should look like {E1, E2, ..., En}
    
    % Multiply your matrices here as shown
    A_inverse = E7 * E6 * E5 * E4 * E3 * E2 * E1; % Should look like En * ... * E_2 * E1
    
    % DO NOT MODIFY ANYTHING BELOW
    disp("Your Inverse Times A is...");
    disp(A_inverse * A_original);
end
