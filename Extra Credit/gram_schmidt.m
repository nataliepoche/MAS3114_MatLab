function [V, name, ufid] = gramm_schmidt(X, normalize)
    % Purpose: (COMMENT)
    % Input Argument [X]: (COMMENT)
    % Input Argument [normalize = false]: (COMMENT)
    % Output Argument [V]: (COMMENT)

    % --- Name & UFID --- %
    name = "Name";
    ufid = 12345678;

    if nargin < 2
        normalize = false; % Don't normalize by default
    end

    [n, p] = size(X);
    V = zeros(n, p);

    % (CODE BELOW)
end
