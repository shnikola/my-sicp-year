#lang racket

(define (cbrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (cbrt-iter (improve guess x) x)
  )
)

(define (improve guess x)
  (/ (+ (/ x (* guess guess)) guess guess) 3)
)

(define (good-enough? guess x)
  (< (abs (- (* guess guess guess) x)) 0.001)
)


(define (cbrt x)
  (cbrt-iter 1.0 x))

(cbrt 0.1)
(cbrt 8)
(cbrt 1231233)