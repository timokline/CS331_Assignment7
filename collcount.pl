% FNAM: collcount.pl
% DESC: A Prolog predicate for the number of collatz iterations
%       Solution to Assignment 7, Exercise 4
% AUTH: Timothy Albert Kline
%       Glenn G. Chappell
% CRSE: CS F331 - Programming Languages
% PROF: Glenn G. Chappell
% STRT: 16 April 2021
% UPDT: N/A
% VERS: 1.0

collatz(N, CN) :-
    0 is N mod 2,
    CN is (N/2).

collatz(N, CN) :-
    1 is N mod 2,
    CN is (3*N + 1).

collatzSeq(1, []) :- !.

collatzSeq(N, [N|L]) :-
    collatz(N, CN),
    collatzSeq(CN, L).

collcount(N,C) :-
    collatzSeq(N, L),
    length(L,C).
