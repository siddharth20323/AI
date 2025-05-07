# % Append two lists
append([], L, L).


append([H|T], L2, [H|L3]) :-
    append(T, L2, L3).

# % Reverse a list
reverse([], []).
reverse([H|T], R) :-
    reverse(T, RevT),
    append(RevT, [H], R).


run_r:-
write('enter list'),
read(L),
reverse(L,R),
write("reversed list is"),
write(R),nl.

# ?- run_r.
# [10,20,30].10,20,30]
# reversed list is[30,20,10]
# true.


# ?- reverse([1,2,3], R).
# R = [3, 2, 1].

# ?- reverse([4,66,43,88,0,1], R).
# R = [1, 0, 88, 43, 66, 4].