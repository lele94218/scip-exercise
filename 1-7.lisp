(define (good-enough? guess x) 
  (< (abs (- (improve guess x) guess)) 
     (* guess .001))) 

(define (sqrt-iter guess oldguess x) 
   (if (good-enough? guess oldguess) 
       guess 
       (sqrt-iter (improve guess x) guess 
                  x))) 
  
(define (good-enough? guess oldguess) 
   (< (abs (- guess oldguess)) 
      (* guess 0.001))) 
  
(define (sqrt x) 
   (sqrt-iter 1.0 2.0 x))

(sqrt 0.00001)
