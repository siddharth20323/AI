factorial(0,1). %best_case

factorial(N,F):-
N>0,
N1 is N - 1,
factorial(N1,F1),
F is N *F1.


run_fact:-
write('Enter a number: '),
read(N),
factorial(N, F),
write('Factorial is: '), write(F), nl.

# - factorial(5, F).
# F = 120 .

# ?- factorial(10, F).
# F = 3628800 .

# ?- run_fact.
# Enter a number: 6
# |: .
# Factorial is: 720
# true .
