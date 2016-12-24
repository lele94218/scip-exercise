(define (find-divisor n test-divisor)
    (cond
        ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (next test-divisor)))
    )
)

(define (next test-divisor)
    (if (= test-divisor 2) (+ test-divisor 1)
                           (+ test-divisor 2)
    )
)

(define (square x)
    (* x x)
)

(define (divides? a b)
    (= (remainder b a) 0)
)

(define (smallest-divisor n)
    (find-divisor n 2)
)

(define (prime? n)
    (= (smallest-divisor n) n)
)

(prime? 5)
(prime? 100000001)
(prime? 49)
