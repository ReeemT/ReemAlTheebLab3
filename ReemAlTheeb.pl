male(abdulaziz).
male(naif).
male(mohammed).
male(khalid).
male(omar).
male(salih).

female(latifah).
female(reem).
female(norah).
female(sarah).
female(fatimah).

parent(abdulaziz, naif).
parent(abdulaziz, mohammed).

parent(naif, reem).
parent(naif, norah).
parent(naif, sarah).
parent(naif, khalid).

parent(latifah, reem).
parent(latifah, norah).
parent(latifah, sarah).
parent(latifah, khalid). 

parent(mohammed, omar).
parent(mohammed, fatimah).
parent(mohammed, salih).


father(X, Y) :- male(X),   parent(X, Y).
mother(X, Y) :- female(X), parent(X, Y).
sister(X, Y) :- female(X), parent(P, X),   parent(P, Y), X \= Y.
brother(X, Y) :- male(X),  parent(P, X),   parent(P, Y), X \= Y.










