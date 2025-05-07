# % Base case: only one element in list
maxlist([X], X).

# % Recursive case: compare head with max of tail
maxlist([H|T], Max) :-
    maxlist(T, MaxTail),
    (H > MaxTail -> Max = H ; Max = MaxTail).

# % Run with user input
run_maxlist :-
    write('Enter a list of numbers: '),
    read(L),
    maxlist(L, M),
    write('Maximum number is: '), 
    write(M), nl.


#  ?- run_maxlist.
# [20,10,300,10]. numbers: [20,10,300,10]
# Maximum number is: 300
# true .



# maxlist([4, 9, 2], Max)
# → Compare 4 with max of [9, 2]
# → Compare 9 with max of [2]
# → maxlist([2], 2)
# → Compare 9 > 2 → Max = 9
# → Compare 4 > 9 → Max = 9
# → Final Max = 9

