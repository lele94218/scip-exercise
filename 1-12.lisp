(define (pascal-triangle m n)
    (if (or (= n 1) (= n m))
        1
        (+ (pascal-triangle (- m 1) (- n 1)) (pascal-triangle (- m 1) n))
    )
)

(pascal-triangle 1 1)
(pascal-triangle 5 3)
