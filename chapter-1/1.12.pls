#lang racket

(define (pascal n row row-index) 
  (cond ((or (= row-index 1) (= row-index row)) 1)
        (else (+ (pascal (- n row) (- row 1) (- row-index 1)) 
                 (pascal (+ (- n row) 1) (- row 1) (+ (- row-index 1) 1))
              )
        ) 
  )
)

(define (triangle until)
  (define (triangle-iter n row row-index until)
    (display (pascal n row row-index))
    
    ;; I cant make cond do more than one function call, so here:
    (cond ((= row-index row) (newline))
          (else (display " "))
    )
    
    (cond ((= n until) (newline))
          ((= row-index row) (triangle-iter (+ n 1) (+ row 1) 1 until) (newline))
          (else (triangle-iter (+ n 1) row (+ row-index 1) until))
    )
  )
  ;; Start iteration
  (triangle-iter 1 1 1 until)
)

(triangle 150)