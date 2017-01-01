(define (cub-iter guess prev-guess x)
  (if (good-enough? guess prev-guess)
    guess
    (cub-iter (improve guess x) guess x)
    )
  )

(define (good-enough? guess prev-guess)
  (< (/ (abs (- guess prev-guess)) guess) 0.001)
  )

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3)
  )

(define (square x)
  (* x x)
  )

;(define (cubroot x)
;  (cub-iter 1.0 0.0 x)
;  )

(define (cubroot x) 
  ((if (< x 0) - +) (cub-iter (improve 1.0 (abs x)) 1 (abs x)))
  )


(cubroot 8)
(cubroot -2)
(cubroot 0.001)
(cubroot 1e-30)
(cubroot 1000000000)
