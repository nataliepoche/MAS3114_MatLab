function [system_type, name, ufid] = LS_solution(n, A, Ab)
    % --- Name & UFID --- %
    name = "Name";
    ufid = 12345678;
    
    % (PURPOSE OF FUNCTION)
    % n = (INPUT ARGUMENT COMMENT) number of columns of A
    % A = (INPUT ARGUMENT COMMENT) coefficient matrix of linear equations
    % Ab = (INPUT ARGUMENT COMMENT) corresponding augmented matrix of [A b]

    inc = "Inconsistent";
    con_with_one_sol = "Consistent with One Solution";
    con_with_inf_sols = "Consistent with Infinite Solutions";
     
    % Add your code below
    if rank(A) ~= rank(Ab)
        system_type = inc;
    else if rank(A) == n
        system_type = con_with_one_sol;
    else
        system_type = con_with_inf_sols;
    end
end
