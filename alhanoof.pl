% Gender facts
male(nemer).
male(nawaf).
male(hasan).

female(habebah).
female(nourah).
female(reem).

% Parent facts
parent(nemer, nourah).
parent(habebah, nourah).

parent(nemer, nawaf).
parent(habebah, nawaf).

parent(nemer, reem).
parent(habebah, reem).

parent(nemer, hasan).
parent(habebah, hasan).

% Rules
father(X, Y) :-
    male(X),
    parent(X, Y).

mother(X, Y) :-
    female(X),
    parent(X, Y).

sister(X, Y) :-
    female(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.

brother(X, Y) :-
    male(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.
