(define (expmod base exp m)
    (cond 
        ((= exp 0) 1)
        ((even? exp) (remainder (square (expmod base (/ exp 2) m)) m))
        (else (remainder (* base (expmod base (- exp 1) m)) m))
    )
)

(define (fermat-test n test-value)
    (define (try-it a)
        (= (expmod a n n) a)
    )
    (try-it test-value)
)

(define (fast-prime? n times)
    (cond
        ((= times 0) true)
        ((fermat-test n times) (fast-prime? n (- times 1)))
        (else false)
    )
)

(define (prime? n)
    (fast-prime? n (- n 1))
)

(prime? 561)
(prime? 1105)
(prime? 1729)
(prime? 2465)
