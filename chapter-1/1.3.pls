#lang racket

(define (sum-of-squares x y) 
  (+ (* x x) (* y y))
)

(define (f a b c) 
  (cond 
    ((and (>= a c) (>= b c)) (sum-of-squares a b))
    ((and (>= c a) (>= b a)) (sum-of-squares c b)) 
    ((and (>= a b) (>= c b)) (sum-of-squares a c)) 
  )
)

; Test cases

(f 1 2 30)
(f 10 2 3)
(f 1 20 3)
(f 1 20 20)
(f 20 20 20)