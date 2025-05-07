
delete(1, [_|T], T).
  
delete(N, [H|T], [H|R]) :-
    N > 1,
    N1 is N - 1,
    delete(N1, T, R).
 
delete(_, [], []) :- !.


 
run_delete :-
    write('Enter the position to delete: '),
    read(N),
    write('Enter the list (e.g., [1, 2, 3]): '),
    read(L),
    delete(N, L, R),
    write('Resulting list: '),
    write(R), nl.




# ?- run_delete.
# Enter the position to delete: 3.
# Enter the list (e.g., [1, 2, 3]): |: [7,8,9,6,7].
# Resulting list: [7,8,6,7]
# true .