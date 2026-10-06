male(ahmed).
male(ali).

female(sara).
female(nora).
% Gender Facts

male(ahmed).
male(ali).

female(sara).
female(nora).

% Parent Facts

parent(ahmed, ali).
parent(sara, ali).

parent(ahmed, nora).
parent(sara, nora).
% Rules

father(X, Y) :-
    male(X),
    parent(X, Y).
mother(X, Y) :-
    female(X),
    parent(X, Y).
son(X, Y) :-
    male(X),
    parent(Y, X).

daughter(X, Y) :-
    female(X),
    parent(Y, X).

brother(X, Y) :-
    male(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.

sister(X, Y) :-
    female(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.

grandfather(X, Y) :-
    male(X),
    parent(X, P),
    parent(P, Y).

aunt(X, Y) :-
    female(X),
    parent(P, Y),
    sister(X, P).

uncle(X, Y) :-
    male(X),
    parent(P, Y),
    brother(X, P).

cousin(X, Y) :-
    parent(P1, X),
    parent(P2, Y),
    parent(G, P1),
    parent(G, P2),
    P1 \= P2,
    X \= Y.

ancestor(X, Y) :-
    parent(X, Y).

ancestor(X, Y) :-
    parent(X, Z),
    ancestor(Z, Y).
