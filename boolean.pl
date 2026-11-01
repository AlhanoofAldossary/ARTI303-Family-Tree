
% AND truth table
and(0, 0, 0).
and(0, 1, 0).
and(1, 0, 0).
and(1, 1, 1).

% OR truth table
or(0, 0, 0).
or(0, 1, 1).
or(1, 0, 1).
or(1, 1, 1).

% NOT truth table
not(0, 1, 1).
not(1, 0, 1).

% Boolean expression: (A AND B) OR (NOT A AND NOT B)
expression(A, B, Result) :-
    and(A, B, X),
    not(A, NA, 1),
    not(B, NB, 1),
    and(NA, NB, Y),
    or(X, Y, Result).
