(define (square x)
    (* x x)
)

(define (expt-iter b n a)
    (cond
        ((= n 0) a)
        ((even? n) (expt-iter (square b) (/ n 2) a))
        (else (expt-iter b (- n 1) (* a b)))
    )
)

(define (fast-expt a n)
    (expt-iter a n 1)
)

(fast-expt 2 10)

(fast-expt 10 10)

(fast-expt 8 3)
