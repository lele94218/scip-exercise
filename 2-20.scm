(define (same-parity first . rest)
    (define (filter x)
        (if (even? x)
            even?
            odd?
        )
    )

    (define (parity f l)
        (cond ((null? l) ())
              ((f (car l)) (cons (car l) (parity f (cdr l))))
              (else (parity f (cdr l)))
        )
    )
    (parity (filter first) rest)
)

(same-parity 2 3 4 5 6 7)
(same-parity 1 2 3 4 5 6 7)
