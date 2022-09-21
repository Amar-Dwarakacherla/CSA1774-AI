male(tom).
male(bob).
male(jim).

female(pam).
female(liz).
female(ann).
female(pat).

parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).


grandfather(X,Z) :-
	male(X),
	parent(X,Y),
	parent(Y,Z).
grandmother(X,Z) :-
	female(X),
	parent(X,Y),
	parent(Y,Z).
father(X,Y):-
	male(X),
	parent(X,Y).
mother(X,Y):-
	female(X),
	parent(X,Y).
brother(X,Y):-
	male(X),mo
	parent(Z,X),
	parent(Z,Y),
	X\=Y.
sister(X,Y):-
	female(X),
	parent(Z,X),
	parent(Z,Y),
	X\=Y.
