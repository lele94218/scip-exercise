(define (good-enough? guess prev-guess)
  (< (/ (abs (- guess prev-guess))
        guess)
     0.001))

(define (sqrt-iter guess prev-guess x)
  (if (good-enough? guess prev-guess)
    guess
    (sqrt-iter (improve guess x)
               guess
               x)))

(define (square x)
  (* x x)
  )

(define (sqrt x) 
   (sqrt-iter 1.0 0 x))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2)
  )

(sqrt 0.000001)
(sqrt 0.00000001)
(sqrt 0.0000000001)

(sqrt 1000000000000)
(sqrt 100000000000000)

