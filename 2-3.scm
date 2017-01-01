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

(define (make-rect p1 p2)
    (let (
            (x1 (x-point p1))
            (x2 (x-point p2))
            (y1 (y-point p1))
            (y2 (y-point p2))
         )
         (cond 
            ((and (< x1 x2) (< y1 y2)) (cons p1 p2))
            ((and (> x1 x2) (> y1 y2)) (cons p2 p1))
            ((and (< x1 x2) (> y1 y2)) (cons (make-point (x1 y2)) (make-point (x2 y1))))
            (else (cons (make-point (x2 y1)) (make-point (x1 y2))))
         )
    )
)

(define (bottom-left r) (car r))

(define (top-right r) (cdr r))

(define (print-rect r)
    (print-point (bottom-left r))
    (print-point (top-right r))
)

(define (perimeter r)
    (let (
            (p1 (bottom-left r))
            (p2 (top-right r))
         )
         (let (
                (x1 (x-point p1))
                (x2 (x-point p2))
                (y1 (y-point p1))
                (y2 (y-point p2))
              )
              (* 2 (+ (- x2 x1) (- y2 y1)))
         )
    )    
)

(define (area r)
     (let (
            (p1 (bottom-left r))
            (p2 (top-right r))
         )
         (let (
                (x1 (x-point p1))
                (x2 (x-point p2))
                (y1 (y-point p1))
                (y2 (y-point p2))
              )
              (* (- x2 x1) (- y2 y1))
         )
    )    
)

(define r (make-rect (make-point 1 1)
                     (make-point 4 5)))

(area r)
(perimeter r)
