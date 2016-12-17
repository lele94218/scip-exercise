(define (fun-recursive n)
  (if (< n 3)
  n
  (+ (fun-recursive (- n 1))
     (* 2 (fun-recursive (- n 2)))
     (* 3 (fun-recursive (- n 3)))
     )) 
  )

(define (fun-iter n a b cnt)
     (if (= cnt 0)
            n
            (fun-iter (+ n (* 2 a) (* 3 b)) n a (- cnt 1))
     )
)

(define (fun-iterative n)
    (fun-iter 2 1 0 (- n 2))
)

(fun-recursive 10)

(fun-iterative 10)

