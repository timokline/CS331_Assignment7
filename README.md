# [Assignment6](https://www.cs.uaf.edu/users/chappell/public_html/class/2021_spr/cs331/docs/p-assn07d.html)

## Exercise A: Running a Caracal Program

Test to execute Caracal code (not included in repo).

## Exercise B: Programming in Forth

In this exercise, a Forth word will be written.

* * *

### Instructions for B

Write a Forth source file collcount.fs as follows:

* Your file should define the word `collcount`
  * Word collcount should have stack effect `(n -- c)`, where `n` is a positive integer, and `c` is the number of iterations of the Collatz function (see [Assignment 5](https://www.cs.uaf.edu/users/chappell/public_html/class/2021_spr/cs331/docs/p-assn05d.html)) required to take `n` to `1`.
* Your code does not need to do any type checking or other error checking.
* Here is a sample Gforth session using `collcount`.

    ```forth
    include collcount.fs  ok
    1 collcount . 0  ok
    7 collcount . 16  ok
    9 collcount 3 collcount . . 7 19  ok
    ```

* * *

## Exercise C: Programming in Scheme

In this exercise, a Scheme procedue with be written.

### Instructions for C

Write a Scheme source file `addpairs.scm` as follows.

* Your file should begin with the line “`#lang scheme`”.
* Your file should define procedure `addpairs`.

  * This takes an arbitrary number of arguments, which should be numbers. It returns a list consisting of the sum of the first two numbers, then the sum of the next two numbers, etc. If there are an odd number of arguments, then the last item in the returned list is the last argument. For example evaluating `(addpairs 1 2 33 44)` should return `(3 77)`, because

    ```matlab
    1+2=3, and 33+44=77
    ```

  * Your code does not need to do any type checking or other error checking.
  * Here is a sample DrRacket session   using `addpairs`. (File `addpairs.scm` should already have been opened and run.)

    ```Scheme
    > (addpairs 1 2 3 4)
    (3 7)
    > (addpairs)
    ()
    > (addpairs 56)
    (56)
    > (addpairs 10 20 30 40 50)
    (30 70 50)
    > (addpairs (* 2 2) (* 3 3))
    (13)
    ```

## Exercise D: Programming in Prolog

In this exercise, a Prolog predicate will be written.

### Instructions for D

Write a Prolog source file `collcount.pl` as follows.

* Your file should define the predicate `collcount/2`; that is, `collcount` is a predicate that takes 2 arguments.
  * Predicate `collcount` should take arguments as follows: `collcount(+n, ?c)`; that is, the first argument is an input, while the second is either an input or an output.
  * The idea is that `n` is a positive integer, and `c` is the number of iterations of the Collatz function required to take `n` to 1 (just as in the Forth exercise).
  * Your code does not need to do any type checking or other error checking.
  * Here is a sample SWI-Prolog session using `collcount`:

    ```prolog
    ?- [collcount].
    true.

    ?- collcount(1, 0).
    true.

    ?- collcount(1, C).
    C = 0.

    ?- collcount(27, C).
    C = 111.

    ?- collcount(27, 200).
    false.

* Your file may define any other predicates you wish.
* You may find the following helpful. Prolog has a numerical function `mod` than computes the integer division remainder, just like the “`%`” operator in C++. For example:

  ```prolog
  ?- K is mod(15, 4).
  K = 3.
  ```
