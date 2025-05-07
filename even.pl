# % Even-length list: empty list is even-length
evenlength([]).

# % If removing two elements still results in even-length
evenlength([_,_|T]) :-
    evenlength(T).

# % Odd-length list: removing one element from an even-length list
oddlength([_|T]) :-
    evenlength(T).


run_even :-
    write('Enter a list: '),
    read(L),
    (evenlength(L) -> 
        write('List has even length.');
        write('List does NOT have even length.')
    ), nl.


run_odd :-
    write('Enter a list: '),
    read(L),
    (oddlength(L) -> 
        write('List has odd length.');
        write('List does NOT have odd length.')
    ), nl.

# ?- evenlength([1, 2, 3, 4]).
# true.

# ?- evenlength([1, 2, 3]).
# false.
