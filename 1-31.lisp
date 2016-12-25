(define (product term a next b)
    (if (> a b)
        1
        (* (term a) (product term (next a) next b))
    )
)

(define (factorial n)
    (define (identity x)
        x
    )
    (define (next x)
        (+ x 1)
    )
    (product identity 1 next n)
)

(define (product term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a) (* result (term a)))
        )
    )
    (iter a 1)
)

(define (square x)
    (* x x)
)

(define (pi-product a b)
    (define (pi-term x)
       (square (/ (* 2 (+ x 1)) (+ (* 2 x) 1)))
    )
    (define (pi-next x)
        (+ x 1)
    )
    (* 4 (/ (product-iter pi-term a pi-next b) (+ b 1)))
)

(exact->inexact(pi-product 1 10000))


