function [name, ufid, ...
    A1, A2, A3, A4, ...
    A, B, ABBA, C, AC, CA, AI, IA, inverse_A, ...
    D, inverse_D, rref_something, rref_inverse_D, inv_inv_D, ...
    E, inverse_DE, inv_D_inv_E, inv_E_inv_D, ...
    inv_DT, inv_D_T] = Exercise3(n)
    % --- Name & UFID --- %
    name = "Name";
    ufid = 12345678;

    % --- Part A [10 Points] --- %
    % For-Loop (i)
    A1 = zeros(n);
    for i = 1:n
        for j = 1:n
            A1(i,j) = i + j;
        end
    end

    % For-Loop (ii)
    A2 = zeros(n);
    for i = 1:n
        for j = i:n
            A2(i,j) = i + j;
            A2(j,i) = A2(i,j);
        end
    end

    % Yes, the output is the sam. e(COMMENT; SAME OUTPUT?)

    % For-Loop (i) = n * n = n^2(EXPRESSION IN TERMS OF n) FLOPs
    % i = 1, j = 1
    % i = 2, j = 2
    %.....
    % i = n, j = n
    % For-Loop (ii) =  n * (n + 1)/2 (EXPRESSION IN TERMS OF n) FLOPs
    % i = 1, j = 1:n, n
    % i = 2, j = 2:n, n-1
    % i = 3, j = 3:n, n-2
    % ....
    % i = n, j = n:n, 1

    % the for loop that uses fewer flops is For-Loop(ii). (COMPARE; WHICH REQUIRES LESS FLOPs?)

    % --- Part B [10 Points] --- %
    % While-Loop (i)
    A3 = zeros(n); % (DO NOT MODIFY THIS LINE)

    % (REWRITE FOR-LOOP (i) USING WHILE LOOPS HERE)
    i = 1;
    while i <= n
        j = 1;
        while j <= n
            A3(i, j) = i + j;
            j = j + 1;
        end
        i = i + 1;
    end

    % While-Loop (ii)
    A4 = zeros(n); % (DO NOT MODIFY THIS LINE)

    % (REWRITE FOR-LOOP (ii) USING WHILE LOOPS HERE)
    i = 1;
    while i <=n
        j = i;
        while j <= n
            A4(i, j) = i + j;
            A4(j, i) = A4(i, j);
            j = j + 1;
        end
        i = i + 1;
    end

    % --- Part C [10 Points] --- %
    A = A1; % (DO NOT MODIFY THIS LINE)
    B = randi([-4 8], n, n - 2);

    ABBA = A * B;
    % (EXPLAIN WHY EITHER A*B OR B*A DOES NOT WORK / IS UNDEFINED)
    % The reason why A * B works is because Matrix A is an nxn matrix and
    % matrix B is an nx(n-2) matrix. When multiplying matrixes, order
    % matters. The columns of the first matrix have to match up with the
    % rows of the second matrix, which A * B Exhibits. However, for B * A,
    % the column of B is (n-2) and the rows of A is n, which do not match
    % up and meet the criteria to be able to multiply matrices. 

    C = randi([-4 8], n, n);

    AC = A * C;
    CA = C * A;
    % (OBSERVE & EXPLAIN WHY EITHER EQUAL OR NOT EQUAL USING LINEAR ALGEBRA)
    % Aside: Matrix multiplication is function composition.
    % AC and CA are not equal because there are different things being
    % multiplied. Under the assumption that both AC and CA work, in matrix A, the dimensions are mxn and in matrix C the
    % dimensions are nxm. So, when doing AC, the the resulting dimensions
    % are nxn, while when doing CA, the resulting dimensions are mxm, which
    % lead to different number combinations. 
    
    AI = A * eye(n);
    IA = eye(n) * A;
    % (OBSERVE & EXPLAIN WHY EITHER EQUAL OR NOT EQUAL USING LINEAR ALGEBRA)
    % Hint: I_n, the identity matrix, has some special property.
    % The reason why AI and IA are equal to each other is due to the unique
    % property of the identity matrix where it's an nxm matrix filled with
    % 1's along the diagonal and the rest of the matrix filled with 0's.
    % It's due to this, the identity matrix acts like a multiplicative
    % identity of 1, so the resulting matrix is A. 

    % --- Part D [10 Points] --- %
    inverse_A = inv(A);
    % (OBSERVE WARNING & CONCLUDE INVERTIBILITY OF A)
    % The matrix A is not inverstible because the determinant is equal to
    % zero.

    D = [1 -1 2; 0 0 1; 1 3 -2];
    inverse_D = inv(D);

    % Complete using *only* two lines and using the rref function (cannot use
    % inv function)!
    rref_something = rref([D rref(D)]);
    rref_inverse_D = rref_something(:, 4:6);

    inv_inv_D = inv(inv(D));
    % (OBSERVE & GENERALIZE)
    % The inverse of the inverse D is the same as the matrix D.

    E = [1 0 2; 2 -1 5; -1 1 -1];

    inverse_DE = inv(D * E);
    inv_D_inv_E = inv(D) * inv(E);
    inv_E_inv_D = inv(E) * inv(D);
    % The inverse of the product of two invertible matrices D and C(inverse_DE) is 
    % equal to the product of the inverse C times the inverse D (inv_E_inv_D)(FINISH GENERALIZATION)

    inv_DT = inv(D');
    inv_D_T = (inv(D))';
    % The inverse of the transpose of an invertible matrix D is equal to
    % the invertible matrix of a transposed D matrix. (FINISH GENERALIZATION)
end
