max(X,Y,X):-
X>=Y.

max(X,Y,Y):-
X<Y.

find_max:-
write('Enter first number: '),
read(X),
write('Enter second number: '),
read(Y),
max(X,Y,M),
write('max num:  '),
write(M),nl.

# ?- max(66,80, M).
# M = 80.

# ?- find_max.
# [25]. first number: [25]
# Enter second number: |: [50].
# max num:  [50]
# true.
