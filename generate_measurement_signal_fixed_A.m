function [y, y_mod, p_star, A] = generate_measurement_signal_fixed_A(x_star, A, R)

% A = randi([0 1], m, n);
% A = normalize(A, 1, "norm");
y = A*x_star;
p_star = (-sign(y)+1)/2; %real phase
y_mod = y + p_star*R; %modulo measurement
% y_mod = mod(y,R);
end