function [x_hat, delta_p] = justice_pursuit_model(y_mod,p, A, R, opts)
[m, n] = size(A);

A_augmented = [A, R.*eye(m)]; %Create Augmented measurement matrix
aug_x = spg_bp(A_augmented, (y_mod-R*p), opts);

x_hat = aug_x(1:n); %extract xhat
delta_p = aug_x(n+1:end); %extract bin index vector error



