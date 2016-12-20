(define (double x)
    (+ x x)
)

(define (halve x)
    (/ x 2)
)

(define (fast-mult a b)
    (define (mult-iter a b acc)
        (cond
            ((= b 0) acc)
            ((even? b) (mult-iter (double a) (halve b) acc))
            (else (mult-iter a (- b 1) (+ acc a)))
        )
    )
    (mult-iter a b 0)
)

(fast-mult 10 2)
(fast-mult 0 10)
(fast-mult 100 0)
(fast-mult 1000 100013)
