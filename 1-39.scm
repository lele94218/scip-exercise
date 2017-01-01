(define (con-frac n d k)
    (define (frac i)
        (if (< i k)
            (/ (n i) (- (d i) (frac (+ i 1))))
            (/ (n i) (d i))
        )
    )
    (frac 1)
)

(define (tan-cf x k)
    (con-frac 
        (lambda (i) (
            if (= i 1)
                x
                (* x x)
        ))
        (lambda (i) (
            - (* 2 i) 1
        ))
        k
    )
)

(tan-cf 2.0 100)
(tan 2.0)
