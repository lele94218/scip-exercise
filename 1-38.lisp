(define (con-frac n d k)
    (define (frac i)
        (if (< i k)
            (/ (n i) (+ (d i) (frac (+ i 1))))
            (/ (n i) (d i))
        )
    )
    (frac 1)
)

(define (eular k)
    (+ 2.0 (con-frac 
        (lambda(i) 1)
        (lambda(i)
            (if (= (remainder i 3) 2)
                (/ (+ i 1) 1.5)
                1
            )
        )
        k
    ))
)

(eular 100)
