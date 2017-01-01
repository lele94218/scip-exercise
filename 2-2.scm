(define (x-point x) (car x))

(define (y-point x) (cdr x))

(define (print-point p)
    (newline)
    (display "(")
    (display (x-point p))
    (display ",")
    (display (y-point p))
    (display ")")
)

(define (make-point x y)
    (cons x y)
)

(define (start-segment x) (car x))

(define (end-segment x) (cdr x))

(define (make-segment x y)
    (cons x y)
)

(define (midpoint-segment s)
    (define (average a b) (/ (+ a b) 2.0))
    (let (
            (a (start-segment s))
            (b (end-segment s))
         )
         (make-point (average (x-point a) (x-point b)) (average (y-point a) (y-point b)))
    )
)

(print-point (midpoint-segment (make-segment (make-point 1 2) (make-point 3 4))))
