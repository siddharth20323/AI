multi(_, 0, 0).

multi(N1,N2, R):-
N2>0,
N3 is N2-1,
multi(N1,N3,R1),
R is N1  + R1.


run_multiply :-
    write('Enter first number: '), 
    read(N1),
    write('Enter second number: '), 
    read(N2),
    multi(N1, N2, R),
    write('Result is: '), 
    write(R), nl.


# ?- run_multiply.
# [20]r first number: [20]
# |: .
# Enter second number: |: [30].
# Result is: 600