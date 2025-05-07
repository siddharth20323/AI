%Base cases
gen_fib(0, 0).
gen_fib(1, 1).

%Recursive case
gen_fib(N, T) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    gen_fib(N1, T1),
    gen_fib(N2, T2),
    T is T1 + T2.

% Interactive input/output
run_fib :-
    write('Enter N: '),
    read(N),
    gen_fib(N, T),
    write('Fibonacci term is: '), 
    write(T), nl.


# ?- run_fib.

# |: [10].
# Fibonacci term is: 55
# true .

# ?- gen_fib(6, T).
# T = 8 