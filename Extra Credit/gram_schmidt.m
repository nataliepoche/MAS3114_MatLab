function [V, name, ufid] = gramm_schmidt(X, normalize)
    % Purpose: Perform the Gram-Schmidt process to convert a basis into an orthogonal or orthonormal basis. (COMMENT)
    % Input Argument [X]: A matrix whose columns are vectors forming a basis of some subspace. (COMMENT)
    % Input Argument [normalize = false]: A boolean flag to indicate whether to normalize the basis vectors. (COMMENT)
    % Output Argument [V]: A matrix whose columns are the orthogonal (or orthonormal) basis vectors. (COMMENT)

    % --- Name & UFID --- %
    name = "Name";
    ufid = 12345678;

    if nargin < 2
        normalize = false; % Don't normalize by default
    end

    [n, p] = size(X);
    V = zeros(n, p);

    % (CODE BELOW)

    for i = 1:p
        % Start with the original vector
        v = X(:, i);
        
        % Subtract the projection of v onto each of the previously computed vectors
        for j = 1:i-1
            v = v - proj(v, V(:, j));
        end
        
        % Store the orthogonal vector in V
        V(:, i) = v;
    end
    
    if normalize
        % Normalize the vectors to create an orthonormal basis
        for i = 1:p
            V(:, i) = V(:, i) / norm(V(:, i));
        end
    end
end