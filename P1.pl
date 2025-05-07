parent(pam, bob).
parent(tom, bob).
parent(tom, liz).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).

female(pam).
male(tom).
male(bob).
female(liz).
female(ann).
female(pat).
male(jim).

mother(X,Y):-    %mother
parent(X,Y),
female(X).

father(X,Y):-    %father
parent(X,Y),
male(X).

grandparent(X,Z):-
parent(X,Z),
parent(Y,Z).       %grandparent


sister(X,Y):-
parent(Z,X),         %sister %same_parentZ
parent(Z,Y),
female(X),
X\=Y.


ancestor(X,Z):-
parent(X,Z).


ancestor(X,Z):-
parent(X,Y),
ancestor(Y,Z).



