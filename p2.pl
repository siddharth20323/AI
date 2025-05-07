conc([],L,L). %best_case

conc([H|T],L2,[H|L3]):-
conc(T,L2,L3).             %recursive



run_conc:-
write('enter list :'),
read(L1),
write("second list :"),
read(L2),
conc(L1,L2, R),
write("resulted list :"),
write(R), nl.



# ?- conc([], [4,5,6], Answer).
# Answer = [4, 5, 6].

# ?- conc([20,10], [100,200,40,50], ANSWER).
# ANSWER = [20, 10, 100, 200, 40, 50].

# ?- run_conc.
# [2,3,4,5]. :[2,3,4,5]
# second list :|: [10,20,30].
# resulted list :[2,3,4,5,10,20,30]
# true.