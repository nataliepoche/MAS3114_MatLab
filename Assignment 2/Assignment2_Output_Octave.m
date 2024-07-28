%% MATLAB Assignment 2 [Output]
%% Exercise 1

disp("===== Exercise 1 =====");
[~, ~, ...
  A1, A2, A3, dep_A1, dep_A2, dep_A3, ...
  B1, B2, B3, dep_B1, dep_B2, dep_B3, ...
  example_B, dep_B, example_C, dep_C] = Exercise1()
disp("=========================");
%% Exercise 2

disp("===== Exercise 2 =====");
[~, ~, ...
  transform_A1, transform_A2, transform_A3, ...
  transform_B1, transform_B2, transform_B3, ...
  C1, C2, C3, transform_C1, transform_C2, transform_C3, ...
  example_neither, transform_neither] = Exercise2(A1, A2, A3, B1, B2, B3)
disp("=========================");
%% Exercise 3

disp("===== Exercise 3 =====");
n = randi([5, 10])
[~, ~, ...
  A1, A2, A3, A4, ...
  A, B, ABBA, C, AC, CA, AI, IA, inverse_A, ...
  D, inverse_D, rref_something, rref_inverse_D, inv_inv_D, ...
  E, inverse_DE, inv_D_inv_E, inv_E_inv_D, ...
  inv_DT, inv_D_T] = Exercise3(n)
disp("=========================");
%% Extra Credit

disp("===== Extra Credit =====");
[E_matrices_in_order, A_inverse] = ExtraCredit();
for i = 1:length(E_matrices_in_order)
    disp("E" + i + " is...")
    disp(E_matrices_in_order{i})
end
disp("You determined that A^-1 is...")
disp(A_inverse)
disp("=========================");