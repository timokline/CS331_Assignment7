\ FNAM: collcount.fs
\ DESC: A Forth word for the number of collatz iterations
\       Solution to Assignment 6, Exercise 2
\ AUTH: Timothy Albert Kline
\       Glenn G. Chappell
\ CRSE: CS F331 - Programming Languages
\ PROF: Glenn G. Chappell
\ STRT: 16 April 2021
\ UPDT: 25 April 2021
\ VERS: 1.0

\ collstep
\ From the class Github - word.fs
: collstep { n -- n_1 }
  n 2 mod 0= if
    n 2 /
  else
    n 3 * 1 +
  endif
;

\ colldist
\ Recursively walks through the collatz conjecture until it reaches 1
\ Increments the number of steps to get to 1 from n
: colldist ( n c -- c )
  swap dup 1 = if \ BASE CASE, returns the count
    drop
  else \ RECURSIVE CASE
    collstep \ find next num of sequence
    swap 1 + \ add 1 to the counter
    recurse \ rinse and repeat
  endif
;

\ collcount
\ Calculates the collatz distance to get from n->1
: collcount ( n -- c )
  dup 0<= if \ not nonzero, return 0
    drop
    0
  else \ calculate the collatz distance
    0 colldist
  endif
;