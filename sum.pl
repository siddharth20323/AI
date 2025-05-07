sum(X,Y,Z):-
Z is X + Y.

sum_is:-
write("enter 1st num: "),
read(X),
write("enter 2nd num: "),
read(Y),

Z is X + Y,
write('sum is : '),
write(Z),nl.



# ?- sum_is.
# [20]. 1st num: [20]
# enter 2nd num: |: [30].
# sum is : 50
