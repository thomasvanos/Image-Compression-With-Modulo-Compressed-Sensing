function x_hat = cosamp_model(y_mod,p_init, A, R, s)

    x_hat = CoSaMP(A, (y_mod-R*p_init), s, [], []);

end 