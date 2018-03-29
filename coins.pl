
change(0, _, []).
change(A, [F | R], [F | X]) :-
  A >= F,
  B is A - F,
  change(B, [F | R], X).
change(A, [_ | R], X) :-
  A > 0,
  change(A, R, X).
