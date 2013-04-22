#lang racket

(define (sqrt-iter old_guess guess x)
  (if (good-enough? old_guess guess)
      guess
      (sqrt-iter guess (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? old_guess guess)
  (< (abs (/ (- old_guess guess) guess)) 0.001))

(define (sqrt x)
  (sqrt-iter 0 1.0 x))

(sqrt 0.01)
(sqrt 4)
(sqrt 40000)