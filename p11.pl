sum_list([],0).

#RECURSIVE
sum_list([H|T], S):-
sum_list(T,S1),
S is H+S1.

run_sumlist :-
    write('Enter a list: '),
    read(L),
    sum_list(L, S),
    write('Sum is: '), 
    write(S), nl.


# ?- run_sumlist.
# [2,3,4,5].st: [2,3,4,5]
# Sum is: 14
# true.