(define (accumulate combiner null-value term a next b)
    (if (> a b)
        null-value
        (combiner (term a) (accumulate combiner null-value term (next a) next b))
    )
)

(define (accumlate-iter combiner null-value term a next b)
    (define (iter a result)
        (if (> a b) res
            (iter (next a) (combiner res (term a)))
        )
    )
    (iter a null-value)
)

(define (sum term a next b)
    (accumulate + 0 term a next b)
)

(define (product term a next b)
    (accumlate * 1 term a next b)
)
