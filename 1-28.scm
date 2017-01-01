(define (expmod base exp m)
    (cond
        ((= exp 0) 1)
        ((even? exp)
            (let ((x (expmod base (/ exp 2) m)))
                (if (non-trivial-sqrt? x m) 0 (remainder (square x) m))
            )
        )
        (else (remainder (* base (expmod base (- exp 1) m)) m))
    )
)

(define (non-trivial-sqrt? n m)
    (cond
        ((= n 1) false)
        ((= n (- m 1)) false)
        (else (= (remainder (square n) m) 1))
    )
)

(define (square x)
    (* x x)
)

(define (miller-rabin-test a n)
    (cond
        ((= a 0) true)
        ((= (expmod a (- n 1) n ) 1) (miller-rabin-test (- a 1) n))
        (else false)
    )
)

(define (prime? n)
    (miller-rabin-test (- n 1) n)
)

(prime? 561)
(prime? 1105)
(prime? 1729)
(prime? 2465)
