(define (double x)
    (+ x x)
)

(define (halve x)
    (/ x 2)
)

(define (mult-iter a b )
    (cond
        ((= b 0) 0)
        ((even? b) (mult-iter (double a) (halve b)))
        (else (+ a (mult-iter a (- b 1) )))
    )
)

(define (fast-mult a b)
    (mult-iter a b)
)

(fast-mult 5 6)

(fast-mult 0 12)

(fast-mult 100 0)

(fast-mult 100 1000)
