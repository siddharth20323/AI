insert(I,1,L,[I|L]).


insert(I, N, [H|T], [H|R]) :-
    N > 1,
    N1 is N - 1,
    insert(I, N1, T, R).

run_insert :-
    write('Enter item to insert: '),
    read(I),
    write('Enter position (1-based): '),
    read(N),
    write('Enter original list: '),
    read(L),
    insert(I, N, L, R),
    write('Resulting list is: '),
    write(R), nl.

# ?- insert(1, 2, [3, 4], R).
# R = [3, 1, 4] 

# ?- run_insert.
# Enter item to insert: 10.
# Enter position (1-based): |: 4.
# Enter original list: |: [2,3,4,55,67].
# Resulting list is: [2,3,4,10,55,67]
# true .
