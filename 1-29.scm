(define (sum term a next b)
    (if (> a b)
        0
        (+ (term a)
           (sum term (next a) next b)
        )
    )
)

(define (simpson-rule f a b n)
    (define (simpson-next x)
        (+ x 2)
    )
    
    (define h (/ (- b a) n))
    
    (define (y k)
        (f (+ a (* k h)))
    )

    (define (simpson-term x)
        (+
            (y x)
            (* 4 (y (+ x 1)))
            (y (+ x 2))
        )
    )

    (* (sum simpson-term 0 simpson-next n ) (/ h 3))
)

(define (cub x)
    (* x x x)
)

(exact->inexact(simpson-rule cub 0 1 100))
(exact->inexact(simpson-rule cub 0 1 1000))
