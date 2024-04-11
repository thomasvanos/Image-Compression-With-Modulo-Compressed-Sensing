function [x_hat, delta_p] = justice_cosamp_model(y_mod,p_init, A, R, s)
    [m, n] = size(A);
    A_augmented = [A, R.*eye(m)];
    aug_x = CoSaMP(A_augmented, (y_mod-R*p_init), s, [], []);

    x_hat = aug_x(1:n);
    delta_p = aug_x(n+1:end);
end 