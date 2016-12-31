(define (nth-root x n)
    (fixed-point
        ((repeated average-damp (floor (/ (log x) (log 2))))
            (lambda (y) (/ x (expt y (- n 1))))
        )
        1.0
    )
)

(define (compose f g)
    (lambda(x)
        (f (g x))
    )
)

(define (repeated f n)
   (if (< n 1)
        (lambda(x) x)
        (compose f (repeated f (- n 1)))
   ) 
)

(define tolerance 0.00001)

(define (fixed-point f first-guess)
    (define (close-enough? v1 v2)
        (< (abs (- v1 v2)) tolerance)
    )

    (define (try guess)
        (let ((next (f guess)))
            (if (close-enough? guess next)
                next
                (try next)
            )
        )
    )

    (try first-guess)
)

(define (average-damp f)
    (define (average x y)
        (/ (+ x y) 2)
    )
    (lambda (x) (average x (f x)))
)

(define (expt b n)
    (define (even? n) (= (remainder n 2) 0))
    (define (square x) (* x x))
    (cond 
        ((= n 0) 1)
        ((even? n) (square (expt b (/ n 2))))
        (else (* b (expt b (- n 1))))
    )
)

(nth-root 100 2)
(nth-root 340282366920938463463374607431768211456 128)
