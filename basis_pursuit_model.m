function [x_hat] = basis_pursuit_model(y_mod,p_init, A, R, opts)
x_hat = spg_bp(A, (y_mod-R*p_init), opts);





