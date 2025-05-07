%Base case
power(_, 0, 1).

%Recursive case
power(Num, Pow, Ans) :-
    Pow > 0,
    P1 is Pow - 1,
    power(Num, P1, A1),
    Ans is Num * A1.

%Run
run_power :-
    write('Enter number: '), 
    read(Num),
    write('Enter power: '), 
    read(Pow),
    power(Num, Pow, Ans),
    write('Answer is: '), 
    write(Ans), nl.


# ?- run_power.
# [3].
# Enter power: |: [2].
# Answer is: 9
# true .

# ?- power(4, 2, Ans).
# Ans = 16 