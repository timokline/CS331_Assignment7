% FNAM: collcount.pl
% DESC: A Prolog predicate for collatz distance of a number
%       Solution to Assignment 7, Exercise 4
% AUTH: Timothy Albert Kline
%       Glenn G. Chappell
% CRSE: CS F331 - Programming Languages
% PROF: Glenn G. Chappell
% STRT: 16 April 2021
% UPDT: 25 April 2021
% VERS: 1.0
% SRCS: http://www.cs.otago.ac.nz/cosc347/References/LP/Code/Collatz.html


% collatz(+n, ?c)
% Even case for the collatz
collatz(N, C) :-
    0 is N mod 2,
    C is (N/2).

% collatz(+n, ?c)
% Odd case for the collatz
collatz(N, C) :-
    1 is N mod 2,
    C is (3*N + 1).

% collatzseq(+n, [?n | ?l])
% n is nonnegative, [n | l] is either n itself, or the list
% containing the collatz numbers from n
% Collatz sequence that starts from the nth term
collatzseq(1, []) :- !.
collatzseq(N, [N | L]) :-
    collatz(N, C),
    collatzseq(C, L).


% collcount(+n, ?c)
% n is a nonnegative integer. c is the collatz distance from n->1
% Calculates the collatz distance of a number n for it to
% terminate to 1
collcount(Num, Count) :-
    collatzSeq(Num, List),
    length(List, Count).
