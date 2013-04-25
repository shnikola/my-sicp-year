#lang racket

(define (f-recursive n) 
  (cond ((< n 3) n)
        (else (+ (f-recursive (- n 1)) (* 2 (f-recursive (- n 2))) (* 3 (f-recursive (- n 3))))) 
  )
)

(f-recursive 30)

(define (f-iterative n) 
  (f-iter 0 0 0 n)
)


(define (f-iter n n-1 n-2 count) 
  (cond ((= count 0) n)
        ((< n 2) (f-iter (+ n 1) n n-1 (- count 1)))
        (else (f-iter (+ n (* 2 n-1) (* 3 n-2)) n n-1 (- count 1))) 
  )
)

(f-iterative 30)
