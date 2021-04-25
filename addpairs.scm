#lang scheme
; FNAM: addpairs.fs
; DESC: A Scheme procedure that adds pairs of numbers
;       Solution to Assignment 6, Exercise 3
; AUTH: Timothy Albert Kline
;       Glenn G. Chappell
; CRSE: CS F331 - Programming Languages
; PROF: Glenn G. Chappell
; STRT: 18 April 2021
; UPDT: 25 April 2021
; VERS: 1.0
; SRCS: https://people.eecs.berkeley.edu/~bh/ssch17/lists.html
;       https://stackoverflow.com/questions/13139747/scheme-pass-variables-to-a-variadic-function
;       https://docs.racket-lang.org/reference/if.html
;       http://www.cs.rpi.edu/academics/courses/fall00/ai/scheme/reference/schintro-v14/schintro_43.html
;       


;; Contract: addpairs : num num num ...  ->  (num num num ...)

;; Purpose: To return a list consisting of the sum of the first two numbers,
;; then the sum of the next two numbers, etc.
;; If there are an odd number of arguments, then the last item in the returned list is the last argument.

;; Example: (addpairs 5 3) should produce (8)
;;          (addpairs 7 9 3) should produce (16 3)

;; Definition:
(define (addpairs . ns)
  (cond
    [(null? ns) '()] ; even case
    [(= 1 (length ns)) ns] ; odd case
    [else (append (list (+ (car ns) (cadr ns))) (apply addpairs (cddr ns)))] ; recurse
  )
)