function p_init = model_initialization(y, R)
    % piecewise function for the computation of the initial bin index
    % vector
    compute_p_init = @(x, R) (0 <= x & x < R/2) .* 0 + (R/2 <= x & x <= R) .* 1;
    p_init= compute_p_init(y, R);
%     y_c_init = y+p_init*R;
%     x0 = wthresh(A*y_c_init, 'h', s);
end 