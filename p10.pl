memb(X,[X|_]). #best

memb(X,[_|T]):-
memb(X,T).





run_memb :-
    write('Enter an element to check: '),
    read(X),
    write('Enter a list: '),
    read(L),
    (memb(X, L) -> true; write(X), write(' is not in the list.'), nl).

# ?- memb(3,[4,5,4,3,2,1]).
# true .

# ?- memb(10,[4,5,4,3,2,1]).
# false.

# ?- run_memb.
# Enter an element to check: 3
# |: .
# Enter a list: |: [2,3,4,5]
# |: .

# true.